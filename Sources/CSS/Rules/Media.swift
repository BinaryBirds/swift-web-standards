//
//  Media.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Represents an `@media` rule with optional query conditions.
public struct Media: Rule {

    /// Represents a CSS media query.
    public struct Query: Sendable {

        /// Logical operators for composing queries.
        public enum Operator: Sendable {
            /// Specifies a NOT operator.
            case not(Query)
            /// Specifies an AND operator.
            case and(Query, Query)
            /// Specifies an OR operator.
            case or(Query, Query)

            /// The composed query for this operator.
            public var query: Query {
                switch self {
                case .not(let value):
                    return .init("not \(value.rawValue)")
                case .and(let lhs, let rhs):
                    return .init("\(lhs.rawValue) and \(rhs.rawValue)")
                case .or(let lhs, let rhs):
                    return .init("\(lhs.rawValue), \(rhs.rawValue)")
                }
            }
        }

        // MARK: -

        /// Scan modes for TV displays.
        public enum Scan: String, Sendable {
            /// Progressive scan.
            case progressive
            /// Interlace scan.
            case interlace
        }

        /// Grid vs bitmap displays.
        public enum Grid: String, Sendable {
            /// Grid.
            case yes = "1"
            /// Bitmap.
            case no = "0"
        }

        /// Device color scheme preference.
        public enum ColorScheme: String, Sendable {
            /// Light mode.
            case light
            /// Dark mode.
            case dark
        }

        /// Prefix for min/max feature queries.
        public enum Prefix: String, Sendable {
            case equals = ""
            case min
            case max
        }

        /// Device orientation.
        public enum Orientation: String, Sendable {
            /// Portrait orientation.
            case portrait
            /// Landscape orientation.
            case landscape
        }

        /// Display modes for installed or standalone experiences.
        public enum DisplayMode: String, Sendable {
            case browser
            case fullscreen
            case minimalUI = "minimal-ui"
            case pictureInPicture = "picture-in-picture"
            case standalone
            case windowControlsOverlay = "window-controls-overlay"
        }

        // MARK: -

        /// Media feature values.
        public enum Value: Sendable {
            /// Specifies the width of the targeted display area.
            case width(Prefix, String)
            /// Specifies the height of the  targeted display area.
            case height(Prefix, String)
            /// Specifies the width of the target display/paper.
            case deviceWidth(Prefix, String)
            /// Specifies the height of the target display/paper.
            case deviceHeight(Prefix, String)
            /// Specifies the width/height ratio of the targeted display area.
            case aspectRatio(Prefix, String)
            /// Specifies the device-width/device-height ratio of the target display/paper.
            case deviceAspectRatio(Prefix, String)
            /// Specifies the bits per color of target display.
            case color(Prefix, String)
            /// Specifies the number of colors the target display can handle.
            case colorIndex(Prefix, String)
            /// Specifies the pixel density (dpi or dpcm) of the target display/paper.
            case resolution(Prefix, String)
            /// Specifies the bits per pixel in a monochrome frame buffer.
            case monochrome(String)
            /// Specifies the display mode.
            case displayMode(DisplayMode)
            /// Specifies scanning method of a tv display.
            case scan(Scan)
            /// Specifies if the output device is grid or bitmap.
            case grid(Grid)
            /// Color scheme preference.
            case prefersColorScheme(ColorScheme)
            /// Specifies the orientation of the target display/paper.
            case orientation(Orientation)

            /// The query fragment rendered from this value.
            public var query: Query {

                func prefixed(
                    _ prefix: Prefix,
                    _ name: String
                ) -> String {
                    prefix == .equals ? name : "\(prefix.rawValue)-\(name)"
                }

                func feature(
                    _ name: String,
                    _ prefix: Prefix,
                    _ value: String
                ) -> Query {
                    .init("(\(prefixed(prefix, name)): \(value))")
                }

                switch self {
                case .width(let prefix, let value):
                    return feature("width", prefix, value)
                case .height(let prefix, let value):
                    return feature("height", prefix, value)
                case .deviceWidth(let prefix, let value):
                    return feature("device-width", prefix, value)
                case .deviceHeight(let prefix, let value):
                    return feature("device-height", prefix, value)
                case .aspectRatio(let prefix, let value):
                    return feature("aspect-ratio", prefix, value)
                case .deviceAspectRatio(let prefix, let value):
                    return feature("device-aspect-ratio", prefix, value)
                case .color(let prefix, let value):
                    return feature("color", prefix, value)
                case .colorIndex(let prefix, let value):
                    return feature("color-index", prefix, value)
                case .resolution(let prefix, let value):
                    return feature("resolution", prefix, value)
                case .monochrome(let value):
                    return .init("(monochrome: \(value))")
                case .displayMode(let value):
                    return .init("(display-mode: \(value.rawValue))")
                case .scan(let value):
                    return .init("(scan: \(value.rawValue))")
                case .grid(let value):
                    return .init("(grid: \(value.rawValue))")
                case .prefersColorScheme(let value):
                    return .init("(prefers-color-scheme: \(value.rawValue))")
                case .orientation(let value):
                    return .init("(orientation: \(value.rawValue))")
                }
            }
        }

        /// Media device types.
        public enum Device: String, Sendable {
            /// Default; suitable for all devices.
            case all
            /// Speech synthesizers.
            case aural
            /// Braille feedback devices.
            case braille
            /// Handheld devices (small screen, limited bandwidth).
            case handheld
            /// Projectors.
            case projection
            /// Print preview mode/printed pages.
            case print
            /// Computer screens.
            case screen
            /// Teletypes and similar media using a fixed-pitch character grid.
            case tty
            /// Television type devices (low resolution, limited scroll ability).
            case tv

            /// The query fragment representing this device.
            public var query: Query {
                .init(rawValue)
            }
        }

        /// Raw query string.
        public let rawValue: String

        /// Creates a query from a raw string.
        /// - Parameter rawValue: The raw query string.
        public init(
            _ rawValue: String
        ) {
            self.rawValue = rawValue
        }
    }

    /// Optional query that wraps the selectors.
    public var query: Query?
    /// Selectors included within this media rule.
    public var selectors: [Selector]

    /// Creates a media rule with optional query.
    /// - Parameters:
    ///   - query: Optional media query to wrap selectors.
    ///   - builder: Builder that returns selectors.
    public init(
        _ query: Query? = nil,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.query = query
        self.selectors = builder()
    }
}

/// Negates a media query.
public prefix func ! (
    value: Media.Query
) -> Media.Query {
    Media.Query.Operator.not(value).query
}

/// Conjoins two media queries with `and`.
public func && (
    lhs: Media.Query,
    rhs: Media.Query
) -> Media.Query {
    Media.Query.Operator.and(lhs, rhs).query
}

/// Combines two media queries with `,` (OR).
public func || (
    lhs: Media.Query,
    rhs: Media.Query
) -> Media.Query {
    Media.Query.Operator.or(lhs, rhs).query
}

extension Media.Query {

    /// Creates a custom raw query.
    /// - Parameter value: The raw query string.
    /// - Returns: A media query matching the requested constraint.
    /// - Returns: A media query matching the requested constraint.
    static func custom(_ value: String) -> Self {
        .init(value)
    }

    // devices
    /// Matches all devices.
    static var all: Self { Media.Query.Device.all.query }
    /// Matches aural devices.
    static var aural: Self { Media.Query.Device.aural.query }
    /// Matches braille devices.
    static var braille: Self { Media.Query.Device.braille.query }
    /// Matches handheld devices.
    static var handheld: Self { Media.Query.Device.handheld.query }
    /// Matches projection devices.
    static var projection: Self { Media.Query.Device.projection.query }
    /// Matches print devices.
    static var print: Self { Media.Query.Device.print.query }
    /// Matches screen devices.
    static var screen: Self { Media.Query.Device.screen.query }
    /// Matches tty devices.
    static var tty: Self { Media.Query.Device.tty.query }
    /// Matches TV devices.
    static var tv: Self { Media.Query.Device.tv.query }

    // values

    /// Width equals a string value.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func width(_ value: String) -> Self {
        Media.Query.Value.width(.equals, value).query
    }

    /// Width equals a unit value.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func width(_ unit: UnitRepresentable) -> Self {
        .width(unit.rawValue)
    }

    /// Minimum width.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func minWidth(_ value: String) -> Self {
        Media.Query.Value.width(.min, value).query
    }

    /// Minimum width from a unit.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func minWidth(_ unit: UnitRepresentable) -> Self {
        .minWidth(unit.rawValue)
    }

    /// Maximum width.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func maxWidth(_ value: String) -> Self {
        Media.Query.Value.width(.max, value).query
    }

    /// Maximum width from a unit.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func maxWidth(_ unit: UnitRepresentable) -> Self {
        .maxWidth(unit.rawValue)
    }

    /// Height equals a string value.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func height(_ value: String) -> Self {
        Media.Query.Value.height(.equals, value).query
    }

    /// Height equals a unit value.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func height(_ unit: UnitRepresentable) -> Self {
        .height(unit.rawValue)
    }

    /// Minimum height.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func minHeight(_ value: String) -> Self {
        Media.Query.Value.height(.min, value).query
    }

    /// Minimum height from a unit.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func minHeight(_ unit: UnitRepresentable) -> Self {
        .minHeight(unit.rawValue)
    }

    /// Maximum height.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func maxHeight(_ value: String) -> Self {
        Media.Query.Value.height(.max, value).query
    }

    /// Maximum height from a unit.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func maxHeight(_ unit: UnitRepresentable) -> Self {
        .maxHeight(unit.rawValue)
    }

    /// Device width equals a string value.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.equals, value).query
    }

    /// Device width equals a unit value.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceWidth(_ unit: UnitRepresentable) -> Self {
        .deviceWidth(unit.rawValue)
    }

    /// Minimum device width.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMinWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.min, value).query
    }

    /// Minimum device width from a unit.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMinWidth(_ unit: UnitRepresentable) -> Self {
        .deviceMinWidth(unit.rawValue)
    }

    /// Maximum device width.
    /// - Parameter value: The width value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMaxWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.max, value).query
    }

    /// Maximum device width from a unit.
    /// - Parameter unit: The width unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMaxWidth(_ unit: UnitRepresentable) -> Self {
        .deviceMaxWidth(unit.rawValue)
    }

    /// Device height equals a string value.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.equals, value).query
    }

    /// Device height equals a unit value.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceHeight(_ unit: UnitRepresentable) -> Self {
        .deviceHeight(unit.rawValue)
    }

    /// Minimum device height.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMinHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.min, value).query
    }

    /// Minimum device height from a unit.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMinHeight(_ unit: UnitRepresentable) -> Self {
        .deviceMinHeight(unit.rawValue)
    }

    /// Maximum device height.
    /// - Parameter value: The height value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMaxHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.max, value).query
    }

    /// Maximum device height from a unit.
    /// - Parameter unit: The height unit.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMaxHeight(_ unit: UnitRepresentable) -> Self {
        .deviceMaxHeight(unit.rawValue)
    }

    /// Aspect ratio equals value.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func aspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.equals, value).query
    }

    /// Minimum aspect ratio.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func minAspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.min, value).query
    }

    /// Maximum aspect ratio.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func maxAspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.max, value).query
    }

    /// Device aspect ratio equals value.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.equals, value).query
    }

    /// Minimum device aspect ratio.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMinAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.min, value).query
    }

    /// Maximum device aspect ratio.
    /// - Parameter value: The ratio value.
    /// - Returns: A media query matching the requested constraint.
    static func deviceMaxAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.max, value).query
    }

    /// Color depth equals value.
    /// - Parameter value: The color depth value.
    /// - Returns: A media query matching the requested constraint.
    static func color(_ value: String) -> Self {
        Media.Query.Value.color(.equals, value).query
    }

    /// Minimum color depth.
    /// - Parameter value: The color depth value.
    /// - Returns: A media query matching the requested constraint.
    static func minColor(_ value: String) -> Self {
        Media.Query.Value.color(.min, value).query
    }

    /// Maximum color depth.
    /// - Parameter value: The color depth value.
    /// - Returns: A media query matching the requested constraint.
    static func maxColor(_ value: String) -> Self {
        Media.Query.Value.color(.max, value).query
    }

    /// Color index equals value.
    /// - Parameter value: The color index value.
    /// - Returns: A media query matching the requested constraint.
    static func colorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.equals, value).query
    }

    /// Minimum color index.
    /// - Parameter value: The color index value.
    /// - Returns: A media query matching the requested constraint.
    static func minColorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.min, value).query
    }

    /// Maximum color index.
    /// - Parameter value: The color index value.
    /// - Returns: A media query matching the requested constraint.
    static func maxColorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.max, value).query
    }

    /// Monochrome depth.
    /// - Parameter value: The monochrome depth value.
    /// - Returns: A media query matching the requested constraint.
    static func monochrome(_ value: String) -> Self {
        Media.Query.Value.monochrome(value).query
    }

    /// Resolution equals value.
    /// - Parameter value: The resolution value.
    /// - Returns: A media query matching the requested constraint.
    static func resolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.equals, value).query
    }

    /// Minimum resolution.
    /// - Parameter value: The resolution value.
    /// - Returns: A media query matching the requested constraint.
    static func minResolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.min, value).query
    }

    /// Maximum resolution.
    /// - Parameter value: The resolution value.
    /// - Returns: A media query matching the requested constraint.
    static func maxResolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.max, value).query
    }

    /// Grid display type.
    /// - Parameter value: The grid value.
    /// - Returns: A media query matching the requested constraint.
    static func grid(_ value: Media.Query.Grid) -> Self {
        Media.Query.Value.grid(value).query
    }

    /// Display mode.
    /// - Parameter value: The display mode value.
    /// - Returns: A media query matching the requested constraint.
    static func displayMode(_ value: Media.Query.DisplayMode) -> Self {
        Media.Query.Value.displayMode(value).query
    }

    /// Scan mode.
    /// - Parameter value: The scan mode value.
    /// - Returns: A media query matching the requested constraint.
    static func scan(_ value: Media.Query.Scan) -> Self {
        Media.Query.Value.scan(value).query
    }

    /// Color scheme preference.
    /// - Parameter value: The color scheme value.
    /// - Returns: A media query matching the requested constraint.
    static func prefersColorScheme(_ value: Media.Query.ColorScheme) -> Self {
        Media.Query.Value.prefersColorScheme(value).query
    }

    /// Device orientation.
    /// - Parameter value: The orientation value.
    /// - Returns: A media query matching the requested constraint.
    static func orientation(_ value: Media.Query.Orientation) -> Self {
        Media.Query.Value.orientation(value).query
    }
}
