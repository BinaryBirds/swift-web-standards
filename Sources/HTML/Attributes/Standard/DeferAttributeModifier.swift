//
//  DeferAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DeferAttributeModifier {

}

extension DeferAttributeModifier where Self: Attributes & Mutable {

    public func `defer`() -> Self {
        setAttribute(
            key: StandardAttributeKey.defer
        )
    }
}
