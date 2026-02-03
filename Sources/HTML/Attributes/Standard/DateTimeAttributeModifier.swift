//
//  DateTimeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DateTimeAttributeModifier {
    associatedtype DateTimeAttributeValueType: AttributeValueRepresentable =
        String
}

extension DateTimeAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Datetime attribute.
    public func dateTime(
        _ value: DateTimeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.datetime,
            value: value?.attributeValue
        )
    }
}
