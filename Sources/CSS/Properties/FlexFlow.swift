//
//  FlexFlow.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `flex-flow` property.
/// Provides typed values for this declaration.
public struct FlexFlow: Property {
    /// Value options for the `flex-flow` property.
    public enum Value: Sendable {
        case values(FlexDirection.Value, FlexWrap.Value)
        /// Sets this property to its default value. Read about initial.
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit

        var rawValue: String {
            switch self {
            case .values(let direction, let wrap):
                return [direction.rawValue, wrap.rawValue]
                    .joined(separator: " ")
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

    /// A shorthand property for the flex-direction and the flex-wrap properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "flex-flow"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the flex-direction and the flex-wrap properties.
    /// - Parameters:
    ///   - direction: The direction value.
    ///   - wrap: The wrap value.
    public init(_ direction: FlexDirection.Value, _ wrap: FlexWrap.Value) {
        self.init(.values(direction, wrap))
    }
}
