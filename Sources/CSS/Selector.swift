//
//  Selector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Protocol describing a CSS selector with attached properties.
public protocol Selector: Sendable {
    /// The selector string (e.g. `.button`, `#id`, `a`).
    var name: String { get }
    /// Properties that will be rendered for this selector.
    var properties: [any Property] { get }
    /// Optional pseudo selector suffix (e.g. `:hover`).
    var pseudo: String? { get set }
}

extension Selector {

    /// Sets a pseudo selector suffix.
    /// - Parameter pseudo: The pseudo selector to append.
    public mutating func pseudo(
        _ pseudo: Pseudo
    ) {
        self.pseudo = pseudo.value
    }
}
