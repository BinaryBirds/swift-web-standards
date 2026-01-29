/// Provides functional mutation helpers.
public protocol Mutable: Sendable {

    /// Returns a modified copy of the value.
    func modify(
        _ block: (inout Self) -> Void
    ) -> Self
}

extension Mutable {

    /// Returns a modified copy of the value.
    public func modify(
        _ block: (inout Self) -> Void
    ) -> Self {
        var mutableSelf = self
        block(&mutableSelf)
        return mutableSelf
    }

    /// Conditionally applies transformations.
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
