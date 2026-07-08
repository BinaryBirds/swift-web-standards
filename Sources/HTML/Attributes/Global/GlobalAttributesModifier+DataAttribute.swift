//
//  GlobalAttributesModifier+DataAttribute.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 07. 08.

import SGML

extension GlobalAttributesModifier where Self: Attributes & Mutable {

    /// Sets a custom HTML `data-*` attribute.
    ///
    /// Pass `label` to create `data-label`; do not include the `data-` prefix.
    public func data(
        _ key: String,
        _ value: String?
    ) -> Self {
        setAttribute(
            name: "data-\(key)",
            value: value?.attributeValue
        )
    }
}
