//
//  GridTrackSize.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

/// Shared Grid track-size value used by repeat() in template properties.
public enum GridTrackSize: Sendable {
    /// Automatic track sizing.
    case auto
    /// Track sized to the largest content contribution.
    case maxContent
    /// Track sized to the smallest content contribution.
    case minContent
    /// Track sized with a CSS length/percentage unit.
    case length(UnitRepresentable)
    /// Track sized with a CSS fraction (`fr`) unit.
    case fraction(FractionRepresentable)

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .maxContent:
            return "max-content"
        case .minContent:
            return "min-content"
        case .length(let value):
            return value.rawValue
        case .fraction(let value):
            return value.rawValue
        }
    }
}
