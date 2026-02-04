//
//  PosterAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol PosterAttributeModifier {
    associatedtype PosterAttributeValueType: AttributeValueRepresentable =
        String
}

extension PosterAttributeModifier where Self: Attributes & Mutable {

    public func poster(

        _ value: PosterAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.poster,
            value: value?.attributeValue
        )
    }
}
