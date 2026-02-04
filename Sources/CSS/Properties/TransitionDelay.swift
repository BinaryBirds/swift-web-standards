//
//  TransitionDelay.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `transition-delay` property.
/// Provides typed values for this declaration.
public struct TransitionDelay: Property {
    /// Value options for the `transition-delay` property.
    public enum Value: Sendable {
        case zero
        /// Specifies the number of seconds to wait before the transition effect will start.
        case seconds(Double)
        /// Specifies the number of milliseconds to wait before the transition effect will start.
        case milliseconds(Double)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .zero:
                return "0"
            case .seconds(let value):
                guard value != 0 else {
                    return "0"
                }
                return "\(value)s"
            case .milliseconds(let value):
                guard value != 0 else {
                    return "0"
                }
                return "\(value)ms"
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

    /// Specifies when the transition effect will start.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .zero
    ) {
        self.name = "transition-delay"
        self.value = value.rawValue
        self.isImportant = false
    }
}
