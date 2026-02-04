//
//  LoopAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol LoopAttributeModifier {

}

extension LoopAttributeModifier where Self: Attributes & Mutable {

    public func loop() -> Self {
        setAttribute(key: StandardAttributeKey.loop)
    }
}
