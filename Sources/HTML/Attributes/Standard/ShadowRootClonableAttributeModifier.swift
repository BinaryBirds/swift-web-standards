//
//  ShadowRootClonableAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ShadowRootClonableAttributeModifier {
    associatedtype
        ShadowRootClonableAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootClonableAttributeModifier where Self: Attributes & Mutable {

    public func shadowRootClonable(
        _ value: ShadowRootClonableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootclonable,
            value: value?.attributeValue
        )
    }
}
