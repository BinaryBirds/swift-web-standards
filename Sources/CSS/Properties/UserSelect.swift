//
//  UserSelect.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `user-select` property.
/// Provides typed values for this declaration.
public struct UserSelect: Property {
    /// Value options for the `user-select` property.
    public enum Value: String, Sendable {
        /// Default. Text can be selected if the browser allows it.
        case auto
        /// Prevent text selection.
        case none
        /// The text can be selected by the user.
        case text
        /// Text selection is made with one click instead of a double-click.
        case all
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether the text of an element can be selected.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "user-select"
        self.value = value.rawValue
        self.isImportant = false
    }
}
