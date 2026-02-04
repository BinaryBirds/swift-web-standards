//
//  OnPauseAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPauseAttributeModifier {
    associatedtype OnPauseAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPauseAttributeModifier where Self: Attributes & Mutable {

    public func onPause(
        _ value: OnPauseAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.pause, value: value?.attributeValue)
    }
}
