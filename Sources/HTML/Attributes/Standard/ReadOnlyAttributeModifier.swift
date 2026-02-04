//
//  ReadOnlyAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ReadOnlyAttributeModifier {

}

extension ReadOnlyAttributeModifier where Self: Attributes & Mutable {

    public func readOnly() -> Self {
        setAttribute(key: StandardAttributeKey.readonly)
    }
}
