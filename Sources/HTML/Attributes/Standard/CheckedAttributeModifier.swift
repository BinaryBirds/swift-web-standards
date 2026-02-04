//
//  CheckedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol CheckedAttributeModifier {

}

extension CheckedAttributeModifier where Self: Attributes & Mutable {

    public func checked() -> Self {
        setAttribute(key: StandardAttributeKey.checked)
    }
}
