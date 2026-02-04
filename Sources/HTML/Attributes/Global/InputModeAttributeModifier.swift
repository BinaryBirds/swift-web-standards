//
//  InputModeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Values for the HTML `inputmode` global attribute.
public enum InputModeAttributeValue: String, AttributeValueRepresentable {
    /// The user agent should not display a virtual keyboard.
    case none
    /// The user agent should display a virtual keyboard capable of text input.
    case text
    /// The user agent should display a virtual keyboard capable of telephone input.
    case tel
    /// The user agent should display a virtual keyboard optimized for URL input.
    case url
    /// The user agent should display a virtual keyboard optimized for email input.
    case email
    /// The user agent should display a virtual keyboard capable of numeric input.
    case numeric
    /// The user agent should display a virtual keyboard capable of fractional numeric input.
    case decimal
    /// The user agent should display a virtual keyboard optimized for search.
    case search
}

/// Provides access to the HTML `inputmode` global attribute.
public protocol InputModeAttributeModifier {
    associatedtype InputModeAttributeValueType: AttributeValueRepresentable =
        InputModeAttributeValue
}

extension InputModeAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `inputmode` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func inputMode(
        _ value: InputModeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.inputmode,
            value: value?.attributeValue
        )
    }
}
