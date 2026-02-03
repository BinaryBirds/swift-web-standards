//
//  OnLoadedMetadataAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLoadedMetadataAttributeModifier {
    associatedtype
        OnLoadedMetadataAttributeValueType: AttributeValueRepresentable = String
}

extension OnLoadedMetadataAttributeModifier where Self: Attributes & Mutable {

    public func onLoadedMetadata(
        _ value: OnLoadedMetadataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadedMetadata,
            value: value?.attributeValue
        )
    }
}
