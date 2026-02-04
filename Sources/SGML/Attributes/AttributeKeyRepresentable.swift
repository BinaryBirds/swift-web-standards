//
//  AttributeKeyRepresentable.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A key that can be used to address attributes.
public protocol AttributeKeyRepresentable {
    var attributeKey: String { get }
}

extension AttributeKeyRepresentable
where
    Self: RawRepresentable,
    RawValue == String
{
    /// The attribute key.
    public var attributeKey: String { rawValue }
}
