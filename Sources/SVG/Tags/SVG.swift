//
//  SVG.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Utils

/// SVG tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element
public struct SVG: SVGTag {

    /// The `preserveAspectRatio` attribute alignment values used by SVG.
    public enum PreserveAspectRatioAlignment: String, Sendable {
        case none
        case xMinYMin
        case xMidYMin
        case xMaxYMin
        case xMinYMid
        case xMidYMid
        case xMaxYMid
        case xMinYMax
        case xMidYMax
        case xMaxYMax
    }

    /// The `preserveAspectRatio` meet-or-slice values used by SVG.
    public enum PreserveAspectRatioMeetOrSlice: String, Sendable {
        case meet
        case slice
    }

    public var attributes: AttributeStore
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

    public func viewBox(
        minX: Int,
        minY: Int,
        width: Int,
        height: Int
    ) -> Self {
        let value = [minX, minY, width, height]
            .map(String.init)
            .joined(separator: " ")

        return setAttribute(name: "viewBox", value: value)
    }

    /// Sets the `preserveAspectRatio` attribute.
    ///
    /// - Parameters:
    ///   - alignment: The alignment keyword, such as `xMinYMin`.
    ///   - meetOrSlice: The scaling mode, usually `meet`.
    /// - Returns: The modified element, allowing method chaining.
    public func preserveAspectRatio(
        _ alignment: PreserveAspectRatioAlignment = .xMinYMin,
        _ meetOrSlice: PreserveAspectRatioMeetOrSlice = .meet
    ) -> Self {
        preserveAspectRatio("\(alignment.rawValue) \(meetOrSlice.rawValue)")
    }

    /// Sets the `preserveAspectRatio` attribute with a custom value.
    ///
    /// Use this when you need to provide the exact SVG value yourself.
    public func preserveAspectRatio(
        _ value: String
    ) -> Self {
        setAttribute(
            name: "preserveAspectRatio",
            value: value
        )
    }

}
