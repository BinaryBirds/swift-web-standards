//
//  RequiredAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol RequiredAttributeModifier {

}

extension RequiredAttributeModifier where Self: Attributes & Mutable {

    public func required() -> Self {
        setAttribute(key: StandardAttributeKey.required)
    }
}
