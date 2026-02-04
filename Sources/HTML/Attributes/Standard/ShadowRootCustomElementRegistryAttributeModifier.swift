//
//  ShadowRootCustomElementRegistryAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ShadowRootCustomElementRegistryAttributeModifier {
    associatedtype
        ShadowRootCustomElementRegistryAttributeValueType:
            AttributeValueRepresentable
        = String
}

extension ShadowRootCustomElementRegistryAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootCustomElementRegistry(
        _ value: ShadowRootCustomElementRegistryAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootcustomelementregistry,
            value: value?.attributeValue
        )
    }
}
