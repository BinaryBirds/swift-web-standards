//
//  OpenAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OpenAttributeModifier {

}

extension OpenAttributeModifier where Self: Attributes & Mutable {

    public func open() -> Self {
        setAttribute(key: StandardAttributeKey.`open`)
    }
}
