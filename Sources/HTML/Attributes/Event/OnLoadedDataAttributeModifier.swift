//
//  OnLoadedDataAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLoadedDataAttributeModifier {
    associatedtype OnLoadedDataAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadedDataAttributeModifier where Self: Attributes & Mutable {

    public func onLoadedData(
        _ value: OnLoadedDataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadedData,
            value: value?.attributeValue
        )
    }
}
