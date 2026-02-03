//
//  AutoPlayAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AutoPlayAttributeModifier {

}

extension AutoPlayAttributeModifier where Self: Attributes & Mutable {

    public func autoPlay() -> Self {
        setAttribute(key: StandardAttributeKey.autoplay)
    }
}
