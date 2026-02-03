//
//  SrcDocAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SrcDocAttributeModifier {
    associatedtype SrcDocAttributeValueType: AttributeValueRepresentable =
        String
}

extension SrcDocAttributeModifier where Self: Attributes & Mutable {

    public func srcDoc(

        _ value: SrcDocAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.srcdoc,
            value: value?.attributeValue
        )
    }
}
