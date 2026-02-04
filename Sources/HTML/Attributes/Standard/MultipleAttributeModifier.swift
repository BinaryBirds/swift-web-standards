//
//  MultipleAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MultipleAttributeModifier {

}

extension MultipleAttributeModifier where Self: Attributes & Mutable {

    public func multiple() -> Self {
        setAttribute(key: StandardAttributeKey.multiple)
    }
}
