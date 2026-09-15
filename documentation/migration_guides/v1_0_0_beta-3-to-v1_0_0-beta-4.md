# Migration guide from v1.0.0-beta.3 to v1.0.0-beta.4

## 1. Rename `WebStandards` to `WebComponents`

Update package dependencies and imports:

```swift
// Before
import WebStandards

// After
import WebComponents
```

The `WebStandards` product and target have been replaced by `WebComponents`.

The following legacy APIs were removed:

- `GlobalStyleComponent`
- `GlobalStylesheetCollector`
- `ComponentContentBuilder`
- The old `WebStandards.Component` protocol

## 2. Rename renderer types

```swift
// Before
DOM.Renderer(...)
SGML.Renderer(...)
StylesheetRenderer(...)

// After
DOMRenderer(...)
SGMLRenderer(...)
CSSRenderer(...)
```

The renamed implementations are located in:

- `Sources/DOM/DOMRenderer.swift`
- `Sources/SGML/SGMLRenderer.swift`
- `Sources/CSS/CSSRenderer.swift`

## 3. Update result-builder usage

`Builder` has moved from the `CSS` and `SGML` targets into the new
`WebBuilders` target.

For custom builder declarations, import `WebBuilders` and use the new
existential syntax:

```swift
import WebBuilders

@Builder<any CSS.Rule>
func rules() -> [any CSS.Rule] {
    ...
}
```

Most built-in HTML and CSS builders continue to work without source changes.

## 4. Migrate components to `BuilderContext`

### Before

The previous component model inherited from `SGML.Element`, used `content()`,
and derived CSS classes from the component type name:

```swift
struct Card: Component, FlowContent {
    func properties() -> [any CSS.Property] {
        Color(.red)
    }

    func content() -> some BasicTag {
        P("Hello")
    }
}
```

### After

Components now return an HTML element from `html(context:)` and declare their
selectors explicitly:

```swift
struct Card: Component {
    func selectors() -> [any CSS.Selector] {
        Class("card") {
            Color(.red)
        }
    }

    func html(context: inout BuilderContext) -> Div {
        Div {
            P("Hello")
        }
        .class("card")
    }
}
```

The new `Component` protocol requires:

- `Sendable` conformance
- An `HTML` associated type conforming to `SGML.Element`
- `html(context:)`
- Optional `rules()`, `selectors()`, and `scripts()` implementations

The old `content()`, `properties()`, `className`, and `node` requirements are
gone. CSS classes are no longer generated or injected automatically.

### Building nested components

Components are not themselves SGML elements anymore. Nested components must be
built through the context:

```swift
func html(context: inout BuilderContext) -> Div {
    Div {
        context.build(childComponent)
    }
}
```

A typical rendering flow is:

```swift
var context = BuilderContext()

let body = context.build(PageComponent())

let html = SGMLRenderer()
    .render(document: Document(root: body))

let css = CSSRenderer(minify: true)
    .render(context.stylesheet())

let javascript = context.javascript()
```

`BuilderContext` registers components, deduplicates them by identifier, and
collects styles and scripts in registration order.

Simple components conform directly to `Component` and implement
`html(context:)`:

```swift
struct SimpleComponent: Component {
    func html(context: inout BuilderContext) -> P {
        P("Component output")
    }
}
```

## 5. Update style and script collection

`ComponentStylesheetCollector` has been renamed and changed to a
registration-based API:

```swift
var collector = ComponentStyleCollector()
collector.register(component)

let stylesheet = collector.stylesheet()
```

The convenience API is still available:

```swift
let stylesheet = ComponentStyleCollector()
    .getStylesheet(from: component)
```

The collector no longer walks an arbitrary rendered SGML tree. Use
`BuilderContext.build(_:)` for nested components so they are registered.

Components can now contribute JavaScript:

```swift
func scripts() -> [String] {
    [
        "window.ready = true;"
    ]
}
```

Use `context.scripts()` for separate sources or `context.javascript()` for one
combined string.

## 6. Migrate CSS colors

String literals now represent arbitrary CSS values. They no longer implicitly
represent hexadecimal colors.

```swift
// Before, commonly used for hexadecimal colors
let color: CSSColor = "f00"

// After
let color = CSSColor(hex: "f00")
let named = CSSColor(stringLiteral: "red")
```

`Color.Value.color(CSSColor)` has been replaced by `Color.Value.raw(String)`.
Prefer the convenience initializers where possible:

```swift
Color(.red)
Color(.raw("color(display-p3 1 0 0)"))
```

## 7. Migrate CSS custom properties

The following APIs were removed:

```swift
Variable("spacing", "1rem")
"spacing".variable
CSSColor.variable("brand")
```

Use typed variable names instead:

```swift
enum ThemeVariable: String, CSSVariableNameRepresentable {
    case spacing
    case brand
}

let declaration = Variable(ThemeVariable.spacing, "1rem")
let color = CSSColorValue.variable(ThemeVariable.brand)
```

For unchecked string names, use `UnsafeCSSVariableName`:

```swift
let name = UnsafeCSSVariableName("spacing")
let declaration = Variable(name, "1rem")
```

CSS variable references are also supported by background images and grid
track/template values.

## 8. Update color property initializers

Several properties now accept `CSSColorValue` instead of `CSSColor`:

```swift
BackgroundColor(.color(.red))
Border(1.px, .solid, .color(.red))
BorderColor(.color(.red), .color(.blue))
```

`BorderColor` now accepts one to four values and preconditions when passed an
invalid number of values.

New typed properties include:

- `AccentColor`
- `WebkitTextFillColor`

## 9. Dependency update

`Package.resolved` updates `swift-collections` from `1.3.0` to `1.6.0`.
Re-resolve dependencies after updating:

```sh
swift package resolve
swift build
swift test
```

## Recommended upgrade order

1. Replace `WebStandards` with `WebComponents`.
2. Rename renderer types.
3. Update custom builder declarations and imports.
4. Rewrite components around `BuilderContext`.
5. Replace legacy style collectors and global styles.
6. Update CSS color and variable APIs.
7. Run `swift build` and `swift test`.
