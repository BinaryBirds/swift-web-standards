//
//  OnContextMenuAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnContextMenuAttributeModifier {
    associatedtype
        OnContextMenuAttributeValueType: AttributeValueRepresentable = String
}

extension OnContextMenuAttributeModifier where Self: Attributes & Mutable {

    public func onContextMenu(
        _ value: OnContextMenuAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.contextMenu,
            value: value?.attributeValue
        )
    }
}
