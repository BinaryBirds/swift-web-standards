/// Marker protocol for top-level CSS rules that can appear in a stylesheet.
///
/// Conforming types are rendered by `StylesheetRenderer` and are expected to
/// be value types that are safe to send across concurrency domains.
public protocol Rule: Sendable {
}
