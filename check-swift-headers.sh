#!/usr/bin/env bash
set -euo pipefail


# Swift Header Checker / Fixer
#
# - Verifies that Swift source files contain a standardized header
# - Can optionally fix or insert headers in-place (--fix)
# - Uses git to determine file creation dates where possible
# - Supports excluding files via .swiftheaderignore
#
# Intended usage:
#   - CI: fail if headers are missing or malformed
#   - Local: optionally auto-fix headers

# Logging helpers (stderr, consistent formatting)
log()   { printf -- "** %s\n" "$*" >&2; }
error() { printf -- "** ERROR: %s\n" "$*" >&2; }
fatal() { error "$@"; exit 1; }

# Configuration / state
DEFAULT_AUTHOR="Binary Birds"
FIX_MODE=0
HAS_ERRORS=0

# Argument parsing
while [ $# -gt 0 ]; do
  case "$1" in
    --fix)
      FIX_MODE=1
      ;;
    --author)
      shift
      [ -z "${1:-}" ] && fatal "--author requires a value"
      DEFAULT_AUTHOR="$1"
      ;;
    *)
      fatal "Unknown argument: $1"
      ;;
  esac
  shift
done

[ "$FIX_MODE" -eq 1 ] \
  && log "Fix mode enabled — headers will be inserted or corrected." \
  || log "Checking Swift file headers..."


# Project name
PROJECT_NAME="$(basename "$PWD")"

# Date helpers
normalize_date() {
  local raw="$1"
  if command -v gdate >/dev/null 2>&1; then
    gdate -d "$raw" +"%Y. %m. %d" 2>/dev/null
  else
    date -d "$raw" +"%Y. %m. %d" 2>/dev/null
  fi
}

get_file_creation_date() {
  local file="$1"
  if git ls-files --error-unmatch "$file" >/dev/null 2>&1; then
    git log -1 --format="%ad" --date=format:"%Y. %m. %d" -- "$file"
  else
    date +"%Y. %m. %d"
  fi
}

# Header detection helpers

# Find the line number of the "Created by" line (header anchor)
find_header_line() {
  grep -nE '^//  Created by .+ on [0-9]{4}\. [0-9]{2}\. [0-9]{2}\.{1,2}$' "$1" \
    | head -n1 \
    | cut -d: -f1
}

# Validate header structure relative to the anchor line
is_header_valid_at_line() {
  local file="$1"
  local line="$2"
  local filename
  filename=$(basename "$file")

  sed -n "$((line-4)),${line}p" "$file" | awk -v f="$filename" -v p="$PROJECT_NAME" '
    NR==1 && $0=="//" {next}
    NR==2 && $0=="//  " f {next}
    NR==3 && $0=="//  " p {next}
    NR==4 && $0=="//" {next}
    NR==5 && $0 ~ "^//  Created by .+ on [0-9]{4}\\. [0-9]{2}\\. [0-9]{2}\\.\\.{0,1}$" {exit 0}
    {exit 1}
  '
}

extract_author_from_header_line() {
  sed -E 's|^//  Created by (.+) on [0-9]{4}\. [0-9]{2}\. [0-9]{2}\.{1,2}$|\1|'
}

extract_date_from_header_line() {
  sed -E 's|^//  Created by .+ on ([0-9]{4}\. [0-9]{2}\. [0-9]{2})\.{1,2}$|\1|'
}

# Replace an invalid header block in place
replace_header_at_line() {
  local file="$1"
  local line="$2"
  local tmpfile
  tmpfile=$(mktemp)

  # Extract original author and date
  local header_line
  header_line=$(sed -n "${line}p" "$file")

  local author
  author=$(printf '%s\n' "$header_line" | extract_author_from_header_line)

  local date
  date=$(printf '%s\n' "$header_line" | extract_date_from_header_line)

  # Safety fallback (should never happen)
  [ -z "$author" ] && author="$DEFAULT_AUTHOR"
  [ -z "$date" ] && date="$(get_file_creation_date "$file")"

  # Remove the old header block
  local start=$((line-4))
  [ "$start" -lt 1 ] && start=1
  sed "${start},${line}d" "$file" > "$tmpfile"

  # Rebuild file WITHOUT adding extra blank lines
  {
    echo "//"
    echo "//  $(basename "$file")"
    echo "//  $PROJECT_NAME"
    echo "//"
    echo "//  Created by $author on $date."
    cat "$tmpfile"
  } > "$tmpfile.fixed"

  mv "$tmpfile.fixed" "$file"
}

# Header validation / fixing
check_or_fix_header() {
  local file="$1"
  local filename
  filename=$(basename "$file")

  # Explicitly ignore Package.swift
  [ "$filename" = "Package.swift" ] && return 0

  local header_line
  header_line=$(find_header_line "$file" || true)

  if [ -n "$header_line" ]; then
    if is_header_valid_at_line "$file" "$header_line"; then
      return 0
    fi

    if [ "$FIX_MODE" -eq 1 ]; then
      replace_header_at_line "$file" "$header_line"
      log "Fixed header: $file"
    else
      error "❌ $file - Header is invalid"
      return 1
    fi
  else
    # No header anywhere → insert at top
    if [ "$FIX_MODE" -eq 1 ]; then
      local tmpfile
      tmpfile=$(mktemp)
      {
        echo "//"
        echo "//  $filename"
        echo "//  $PROJECT_NAME"
        echo "//"
        echo "//  Created by $DEFAULT_AUTHOR on $(get_file_creation_date "$file")."
        echo ""
        cat "$file"
      } > "$tmpfile"
      mv "$tmpfile" "$file"
      log "Header added: $file"
    else
      error "❌ $file - Header missing"
      return 1
    fi
  fi
}

# Exclusions
IGNORE_FILE=".swiftheaderignore"
EXCLUDE_PATTERNS=()

if [ -f "$IGNORE_FILE" ]; then
  log "Using exclusion list from $IGNORE_FILE"
  while IFS= read -r line || [ -n "$line" ]; do
    [[ -n "$line" && ! "$line" =~ ^# ]] && EXCLUDE_PATTERNS+=(":(exclude)$line")
  done < "$IGNORE_FILE"
else
  EXCLUDE_PATTERNS+=(
    ":(exclude).*"
    ":(exclude)*.txt"
    ":(exclude)*.png"
    ":(exclude)*.jpeg"
    ":(exclude)*.jpg"
    ":(exclude)*.sh"
    ":(exclude)*.html"
    ":(exclude)*.yaml"
    ":(exclude)README.md"
    ":(exclude)Package.resolved"
    ":(exclude)Makefile"
    ":(exclude)LICENSE"
    ":(exclude)Package*.swift"
    ":(exclude)docker/**"
  )
fi

# File processing
FILES=()
while IFS= read -r -d '' file; do
  FILES+=("$file")
done < <(git ls-files -z "${EXCLUDE_PATTERNS[@]}")

for file in "${FILES[@]}"; do
  if ! check_or_fix_header "$file"; then
    HAS_ERRORS=1
  fi
done

# Final result
if [ "$HAS_ERRORS" -eq 1 ]; then
  [ "$FIX_MODE" -eq 1 ] && log "⚠️ Some headers were fixed." || fatal "Some files have header issues."
else
  [ "$FIX_MODE" -eq 1 ] && log "✅ Headers updated successfully." || log "✅ All headers are valid."
fi