//
//  TransitionDuration.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `transition-duration` property.
/// Provides typed values for this declaration.
public struct TransitionDuration: Property {
    /// Value options for the `transition-duration` property.
    public enum Value: Sendable {
        case zero
        /// Specifies how many seconds a transition effect takes to complete. Default value is 0s, meaning there will be no effect.
        case seconds(Double)
        /// Specifies how many milliseconds a transition effect takes to complete. Default value is 0s, meaning there will be no effect.
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

    /// Specifies how many seconds or milliseconds a transition effect takes to complete.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .zero
    ) {
        self.name = "transition-duration"
        self.value = value.rawValue
        self.isImportant = false
    }
}
