/// CSS `background` property.
/// Provides typed values for this declaration.
public struct Background: Property {
    /// Value options for the `background` property.
    public enum Value: Sendable {

        case values(
            CSSColorValue?,
            BackgroundImage.Value?,
            BackgroundPosition.Value?,
            BackgroundSize.Value?,
            BackgroundRepeat.Value?,
            BackgroundOrigin.Value?,
            BackgroundClip.Value?,
            BackgroundAttachment.Value?
        )
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let color,
                let image,
                let position,
                let size,
                let `repeat`,
                let origin,
                let clip,
                let attachment
            ):
                return [
                    color?.rawValue,
                    image?.rawValue,
                    position?.rawValue,
                    size?.rawValue,
                    `repeat`?.rawValue,
                    origin?.rawValue,
                    clip?.rawValue,
                    attachment?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the background-* properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "background"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a background with CSS color.
    /// - Parameter color: The color value.
    public init(
        color: CSSColor
    ) {
        self.init(.values(.color(color), nil, nil, nil, nil, nil, nil, nil))
    }

    /// A shorthand property for all the background-* properties.
    /// - Parameters:
    /// -  color: The color value.
    /// -  image: The image value.
    /// -  position: The position value.
    /// -  size: The size value.
    /// -  repeat: The `repeat` value.
    /// -  origin: The origin value.
    /// -  clip: The clip value.
    /// -  attachment: The attachment value.
    public init(
        color: CSSColorValue? = nil,
        image: BackgroundImage.Value? = nil,
        position: BackgroundPosition.Value? = nil,
        size: BackgroundSize.Value? = nil,
        `repeat`: BackgroundRepeat.Value? = nil,
        origin: BackgroundOrigin.Value? = nil,
        clip: BackgroundClip.Value? = nil,
        attachment: BackgroundAttachment.Value? = nil
    ) {
        self.init(
            .values(
                color,
                image,
                position,
                size,
                `repeat`,
                origin,
                clip,
                attachment
            )
        )
    }
}
