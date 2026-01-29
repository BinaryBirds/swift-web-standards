/// Base protocol for renderable CSS properties.
///
/// Conforming types supply a property `name` and a `value` string that are
/// concatenated by `StylesheetRenderer` when emitting CSS.
public protocol Property: Sendable, Mutable {

    /// The CSS property name (e.g. `"margin"`).
    var name: String { get }
    /// The rendered CSS value (e.g. `"10px"`).
    var value: String { get }
    /// Whether the property should be rendered as `!important`.
    var isImportant: Bool { get set }
}

extension Property {

    /// Returns a copy with the `!important` flag toggled.
    /// - Parameter value: Whether the property should be marked as important.
    /// - Returns: A modified copy with the updated importance flag.
    public func important(_ value: Bool = true) -> Self {
        modify { $0.isImportant = value }
    }
}

/// Helper protocol that enables value-type mutation via copy-on-write helpers.
public protocol Mutable: Sendable {

    /// Returns a copy modified by the given block.
    /// - Parameter block: A mutation closure applied to a local copy.
    /// - Returns: The modified copy.
    func modify(
        _ block: (inout Self) -> Void
    ) -> Self
}

extension Mutable {

    /// Returns a copy modified by the given block.
    /// - Parameter block: A mutation closure applied to a local copy.
    /// - Returns: The modified copy.
    public func modify(
        _ block: (inout Self) -> Void
    ) -> Self {
        var mutableSelf = self
        block(&mutableSelf)
        return mutableSelf
    }

    /// Conditionally transforms the value with optional else handling.
    /// - Parameters:
    ///   - condition: The boolean that selects which branch to apply.
    ///   - trueBlock: Transformation applied when `condition` is true.
    ///   - falseBlock: Optional transformation applied when `condition` is false.
    /// - Returns: The transformed value, or `self` when no branch is applied.
    public func `if`(
        _ condition: Bool,
        _ trueBlock: (Self) -> Self,
        `else` falseBlock: ((Self) -> Self)? = nil
    ) -> Self {
        if condition {
            return trueBlock(self)
        }
        return falseBlock?(self) ?? self
    }
}
