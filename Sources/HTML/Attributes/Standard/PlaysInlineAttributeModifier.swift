//
//  PlaysInlineAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol PlaysInlineAttributeModifier {
}

extension PlaysInlineAttributeModifier where Self: Attributes & Mutable {

    public func playsInline() -> Self {
        setAttribute(key: StandardAttributeKey.playsinline)
    }
}
