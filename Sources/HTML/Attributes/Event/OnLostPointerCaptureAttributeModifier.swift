//
//  OnLostPointerCaptureAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLostPointerCaptureAttributeModifier {
    associatedtype
        OnLostPointerCaptureAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLostPointerCaptureAttributeModifier
where Self: Attributes & Mutable {

    public func onLostPointerCapture(
        _ value: OnLostPointerCaptureAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.lostPointerCapture,
            value: value?.attributeValue
        )
    }
}
