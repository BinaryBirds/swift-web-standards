//
//  OnVolumeChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnVolumeChangeAttributeModifier {
    associatedtype
        OnVolumeChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnVolumeChangeAttributeModifier where Self: Attributes & Mutable {

    public func onVolumeChange(
        _ value: OnVolumeChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.volumeChange,
            value: value?.attributeValue
        )
    }
}
