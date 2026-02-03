//
//  AttributeValueRepresentable.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A value that can be used as an attribute value.
public protocol AttributeValueRepresentable: Sendable {
    var attributeValue: String { get }
}

extension AttributeValueRepresentable
where
    Self: RawRepresentable,
    RawValue == String
{
    /// The attribute value.
    public var attributeValue: String { rawValue }
}

extension String: AttributeValueRepresentable {
    /// The attribute value.
    public var attributeValue: String { self }
}

extension Int: AttributeValueRepresentable {
    /// The attribute value.
    public var attributeValue: String { String(self) }
}

extension Double: AttributeValueRepresentable {
    /// The attribute value.
    public var attributeValue: String { String(self) }
}
