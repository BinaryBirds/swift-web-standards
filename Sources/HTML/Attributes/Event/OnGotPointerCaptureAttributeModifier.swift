//
//  OnGotPointerCaptureAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnGotPointerCaptureAttributeModifier {
    associatedtype
        OnGotPointerCaptureAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnGotPointerCaptureAttributeModifier
where Self: Attributes & Mutable {

    public func onGotPointerCapture(
        _ value: OnGotPointerCaptureAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.gotPointerCapture,
            value: value?.attributeValue
        )
    }
}
