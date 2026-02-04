//
//  PopoverAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Values for the HTML `popover` global attribute.
public enum PopoverAttributeValue: String, AttributeValueRepresentable {
    /// Closes other popovers when opened; has light dismiss and responds to close requests.
    case auto
    /// Does not close other popovers; does not light dismiss or respond to close requests.
    case manual
    /// Closes other hint popovers when opened, but not other auto popovers.
    case hint
}

/// Provides access to the HTML `popover` global attribute.
public protocol PopoverAttributeModifier {
    associatedtype PopoverAttributeValueType: AttributeValueRepresentable =
        PopoverAttributeValue
}

extension PopoverAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `popover` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func popover(
        _ value: PopoverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.popover,
            value: value?.attributeValue
        )
    }
}
