//
//  ControlsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ControlsAttributeModifier {

}

extension ControlsAttributeModifier where Self: Attributes & Mutable {

    public func controls() -> Self {
        setAttribute(key: StandardAttributeKey.controls)
    }
}
