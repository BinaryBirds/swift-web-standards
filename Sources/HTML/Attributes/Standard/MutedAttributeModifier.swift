//
//  MutedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MutedAttributeModifier {

}

extension MutedAttributeModifier where Self: Attributes & Mutable {

    public func muted() -> Self {
        setAttribute(key: StandardAttributeKey.muted)
    }
}
