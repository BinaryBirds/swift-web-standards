//
//  PopoverTargetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol PopoverTargetAttributeModifier {
    associatedtype
        PopoverTargetAttributeValueType: AttributeValueRepresentable = String
}

extension PopoverTargetAttributeModifier where Self: Attributes & Mutable {

    public func popoverTarget(

        _ value: PopoverTargetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.popovertarget,
            value: value?.attributeValue
        )
    }
}
