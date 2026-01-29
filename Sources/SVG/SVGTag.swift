import SGML

/// A protocol that marks an element as an SVG-compatible tag.
///
/// `SVGTag` extends `StandardTag` with convenience methods for setting
/// common SVG attributes such as size, fill, stroke, and transforms.
/// These helpers follow a fluent API style, returning `Self` to allow
/// method chaining.
///
/// ```swift
/// rect()
///     .width(100)
///     .height(50)
///     .fill("red")
///     .stroke("black")
///     .strokeWidth(2)
/// ```
public protocol SVGTag: StandardTag {}

extension SVGTag {

    /// Sets the `width` attribute of the SVG element.
    ///
    /// - Parameter value: The width of the element, in user units.
    /// - Returns: The modified element, allowing method chaining.
    public func width(
        _ value: Int
    ) -> Self {
        setAttribute(name: "width", value: String(value))
    }

    /// Sets the `height` attribute of the SVG element.
    ///
    /// - Parameter value: The height of the element, in user units.
    /// - Returns: The modified element, allowing method chaining.
    public func height(
        _ value: Int
    ) -> Self {
        setAttribute(name: "height", value: String(value))
    }

    /// Sets the `fill` attribute of the SVG element.
    ///
    /// - Parameter value: A fill color or paint definition (e.g. `"none"`, `"red"`, `"#ff0000"`).
    /// - Returns: The modified element, allowing method chaining.
    public func fill(
        _ value: String
    ) -> Self {
        setAttribute(name: "fill", value: value)
    }

    /// Sets the `stroke` attribute of the SVG element.
    ///
    /// - Parameter value: A stroke color or paint definition.
    /// - Returns: The modified element, allowing method chaining.
    public func stroke(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke", value: value)
    }

    /// Sets the `stroke-width` attribute of the SVG element.
    ///
    /// - Parameter value: The width of the stroke, in user units.
    /// - Returns: The modified element, allowing method chaining.
    public func strokeWidth(
        _ value: Int
    ) -> Self {
        setAttribute(name: "stroke-width", value: String(value))
    }

    /// Sets the `stroke-linecap` attribute of the SVG element.
    ///
    /// - Parameter value: The line cap style (e.g. `"butt"`, `"round"`, `"square"`).
    /// - Returns: The modified element, allowing method chaining.
    public func strokeLinecap(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke-linecap", value: value)
    }

    /// Sets the `stroke-linejoin` attribute of the SVG element.
    ///
    /// - Parameter value: The line join style (e.g. `"miter"`, `"round"`, `"bevel"`).
    /// - Returns: The modified element, allowing method chaining.
    public func strokeLinejoin(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke-linejoin", value: value)
    }

    /// Sets the `transform` attribute of the SVG element.
    ///
    /// - Parameter value: A transform definition string (e.g. `"rotate(45)"`, `"translate(10 20)"`).
    /// - Returns: The modified element, allowing method chaining.
    public func transform(
        _ value: String
    ) -> Self {
        setAttribute(name: "transform", value: value)
    }
}
