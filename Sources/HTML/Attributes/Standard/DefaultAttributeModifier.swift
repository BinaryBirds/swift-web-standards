//
//  DefaultAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DefaultAttributeModifier {
}

extension DefaultAttributeModifier where Self: Attributes & Mutable {

    public func `default`() -> Self {
        setAttribute(
            key: StandardAttributeKey.`default`
        )
    }
}
