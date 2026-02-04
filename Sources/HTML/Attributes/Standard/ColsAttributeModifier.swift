//
//  ColsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ColsAttributeModifier {
    associatedtype ColsAttributeValueType: AttributeValueRepresentable = Int
}

extension ColsAttributeModifier where Self: Attributes & Mutable {

    public func cols(

        _ value: ColsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.cols,
            value: value?.attributeValue
        )
    }
}
