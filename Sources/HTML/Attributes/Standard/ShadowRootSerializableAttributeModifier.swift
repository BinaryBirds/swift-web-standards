//
//  ShadowRootSerializableAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ShadowRootSerializableAttributeModifier {
    associatedtype
        ShadowRootSerializableAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootSerializableAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootSerializable(
        _ value: ShadowRootSerializableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootserializable,
            value: value?.attributeValue
        )
    }
}
