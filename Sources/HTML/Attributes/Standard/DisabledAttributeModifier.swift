//
//  DisabledAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DisabledAttributeModifier {

}

extension DisabledAttributeModifier where Self: Attributes & Mutable {

    public func disabled() -> Self {
        setAttribute(key: StandardAttributeKey.disabled)
    }
}
