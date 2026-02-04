//
//  Attribute+Keys.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

extension Attributes where Self: Mutable {

    /// Sets an attribute value using an attribute key.
    public func setAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String? = nil
    ) -> Self {
        setAttribute(name: key.attributeKey, value: value)
    }

    /// Adds an attribute value using an attribute key.
    public func addAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?
    ) -> Self {
        addAttribute(name: key.attributeKey, value: value)
    }

    /// Removes an attribute or attribute value using an attribute key.
    public func removeAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Self {
        removeAttribute(name: key.attributeKey)
    }

    /// Removes an attribute or attribute value using an attribute key.
    public func removeAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: key.attributeKey,
            value: value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }

    /// Returns an attribute value using an attribute key.
    public func getAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> String? {
        getAttribute(name: key.attributeKey)
    }

    /// Returns whether an attribute is present using an attribute key.
    public func hasAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Bool {
        hasAttribute(name: key.attributeKey)
    }

    /// Returns whether an attribute is present using an attribute key.
    public func hasAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?
    ) -> Bool {
        hasAttribute(name: key.attributeKey, value: value)
    }

    // MARK: -

    /// Sets an attribute value using an attribute key.
    public func setAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: Int?
    ) -> Self {
        setAttribute(name: key.attributeKey, value: value.map(String.init))
    }

    /// Returns an attribute value using an attribute key.
    public func getAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Int? {
        getAttribute(name: key.attributeKey).flatMap { Int($0) }
    }
}
