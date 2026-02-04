//
//  TextCombineUpright.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `text-combine-upright` property.
/// Provides typed values for this declaration.
public struct TextCombineUpright: Property {
    /// Value options for the `text-combine-upright` property.
    public enum Value: Sendable {
        case none
        case all
        case digits(Int)
        case inherit
        case initial
        case revert
        case unset

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .all:
                return "all"
            case .digits(let value):
                return "digits \(value)"
            case .inherit:
                return "inherit"
            case .initial:
                return "initial"
            case .revert:
                return "revert"
            case .unset:
                return "unset"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the combination of multiple characters into the space of a single character.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "text-combine-upright"
        self.value = value.rawValue
        self.isImportant = false
    }
}
