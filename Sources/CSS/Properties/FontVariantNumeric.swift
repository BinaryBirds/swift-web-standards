//
//  FontVariantNumeric.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-variant-numeric` property.
/// Provides typed values for this declaration.
public struct FontVariantNumeric: Property {
    /// Value options for the `font-variant-numeric` property.
    public enum Value: String, Sendable {
        case normal
        case ordinal
        case slashedZero = "slashed-zero"
        case liningNums = "lining-nums"
        case oldstyleNums = "oldstyle-nums"
        case proportionalNums = "proportional-nums"
        case tabularNums = "tabular-nums"
        case diagonalFractions = "diagonal-fractions"
        case stackedFractions = "stacked-fractions"
        case oldstyleNumsStackedFractions = "oldstyle-nums stacked-fractions"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant-numeric"
        self.value = value.rawValue
        self.isImportant = false
    }
}
