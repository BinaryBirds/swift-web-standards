//
//  NoModuleAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol NoModuleAttributeModifier {

}

extension NoModuleAttributeModifier where Self: Attributes & Mutable {

    public func noModule() -> Self {
        setAttribute(key: StandardAttributeKey.nomodule)
    }
}
