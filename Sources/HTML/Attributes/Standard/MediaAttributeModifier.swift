//
//  MediaAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MediaAttributeModifier {
    associatedtype MediaAttributeValueType: AttributeValueRepresentable = String
}

extension MediaAttributeModifier where Self: Attributes & Mutable {

    /// Specifies on what device the linked document will be displayed.
    public func media(
        _ value: MediaAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.media,
            value: value?.attributeValue
        )
    }
}
