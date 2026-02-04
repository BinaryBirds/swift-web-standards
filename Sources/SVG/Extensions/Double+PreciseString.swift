//
//  Double+PreciseString.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

extension Double {

    /// A string representation of the value without a trailing `.0` for whole numbers.
    ///
    /// This property returns an integer-style string (e.g. `"5"`) when the `Double`
    /// has no fractional component, and otherwise falls back to the default
    /// `String(Double)` representation (e.g. `"5.25"`).
    ///
    /// - Important: This is a lightweight workaround that avoids using `Foundation`.
    ///   It relies on integer comparison and may not be suitable for values affected
    ///   by floating-point precision errors.
    ///
    /// ## Examples
    /// ```swift
    /// 5.0.preciseString    // "5"
    /// 3.14.preciseString   // "3.14"
    /// (-2.0).preciseString // "-2"
    /// ```
    var preciseString: String {
        if self - Double(Int(self)) == 0 {
            return String(Int(self))
        }
        return String(self)
    }

}
