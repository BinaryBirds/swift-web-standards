//
//  SelectedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SelectedAttributeModifier {

}

extension SelectedAttributeModifier where Self: Attributes & Mutable {

    public func selected() -> Self {
        setAttribute(
            key: StandardAttributeKey.selected
        )
    }
}
