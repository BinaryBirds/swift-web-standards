//
//  StartAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol StartAttributeModifier {
    associatedtype StartAttributeValueType: AttributeValueRepresentable = Int
}

extension StartAttributeModifier where Self: Attributes & Mutable {

    public func start(

        _ value: StartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.start,
            value: value?.attributeValue
        )
    }
}
