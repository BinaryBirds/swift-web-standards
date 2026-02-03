//
//  DownloadAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DownloadAttributeModifier {
    associatedtype DownloadAttributeValueType: AttributeValueRepresentable =
        String
}

extension DownloadAttributeModifier where Self: Attributes & Mutable {

    public func download(
        _ value: DownloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.download,
            value: value?.attributeValue
        )
    }

    public func download() -> Self {
        setAttribute(key: StandardAttributeKey.download)
    }
}
