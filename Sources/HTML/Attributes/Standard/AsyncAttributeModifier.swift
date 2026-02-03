//
//  AsyncAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AsyncAttributeModifier {

}

extension AsyncAttributeModifier where Self: Attributes & Mutable {

    public func `async`() -> Self {
        setAttribute(
            key: StandardAttributeKey.`async`
        )
    }
}
