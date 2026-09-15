//
//  Img+Extensions.swift
//  swift-web-standards
//
//  Created by Codex on 2026. 09. 15.
//

extension Img {

    /// Sets the same value for both the `width` and `height` attributes.
    public func size(
        _ value: Int
    ) -> Self {
        width(value).height(value)
    }
}
