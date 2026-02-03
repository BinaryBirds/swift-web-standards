//
//  OnPasteAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPasteAttributeModifier {
    associatedtype OnPasteAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPasteAttributeModifier where Self: Attributes & Mutable {

    public func onPaste(
        _ value: OnPasteAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.paste, value: value?.attributeValue)
    }
}
