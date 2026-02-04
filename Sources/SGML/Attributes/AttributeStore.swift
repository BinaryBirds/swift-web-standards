//
//  AttributeStore.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import Collections
import DOM

/// Stores attribute names and values for elements.
public struct AttributeStore: Sendable {

    private var storage: OrderedDictionary<String, [String?]>

    /// Creates an attribute store.
    public init() {
        self.storage = [:]
    }

    // MARK: - api

    /// Sets an attribute value, replacing any existing value.
    public mutating func set(
        name: String,
        value: String?
    ) {
        storage[name] = [value]
    }

    /// Adds an attribute value, preserving existing values.
    public mutating func add(
        name: String,
        value: String?
    ) {
        if storage[name] == nil {
            storage[name] = []
        }
        guard let value, !value.isEmpty else {
            return
        }
        guard !storage[name]!.contains(value) else {
            return
        }
        storage[name]?.append(value)
    }

    /// Removes an attribute or attribute value.
    public mutating func remove(
        name: String
    ) {
        storage[name] = nil
    }

    /// Removes an attribute or attribute value.
    public mutating func remove(
        name: String,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) {
        guard storage[name] != nil else {
            return
        }
        storage[name] = storage[name]!.filter { $0 != value }

        if !preservingEmptyAttribute {
            if storage[name]!.isEmpty {
                storage[name] = nil
            }
        }
    }

    /// Returns whether an attribute is present.
    public func has(
        name: String
    ) -> Bool {
        storage[name] != nil
    }

    /// Returns whether an attribute is present.
    public func has(
        name: String,
        value: String?
    ) -> Bool {
        if let values = storage[name] {
            return values.contains(value)
        }
        return false
    }

    /// Returns the combined attribute value.
    public func get(
        name: String
    ) -> String? {
        storage[name]?.compactMap { $0 }.joined(separator: " ")
    }

    // MARK: - DOM

    /// The attribute properties suitable for DOM rendering.
    public var properties: [Property] {
        storage.map { name, value in
            let values = value.compactMap { $0 }
            return .init(
                name: name,
                value: values.isEmpty ? nil : values.joined(separator: " ")
            )
        }
    }
}
