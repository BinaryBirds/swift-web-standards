/// https://www.w3schools.com/cssref/.
public protocol Property: Sendable, Mutable {

    var name: String { get }
    var value: String { get }
    var isImportant: Bool { get set }
}

extension Property {

    public func important(_ value: Bool = true) -> Self {
        modify { $0.isImportant = value }
    }
}

public protocol Mutable: Sendable {

    func modify(
        _ block: (inout Self) -> Void
    ) -> Self
}

extension Mutable {

    public func modify(
        _ block: (inout Self) -> Void
    ) -> Self {
        var mutableSelf = self
        block(&mutableSelf)
        return mutableSelf
    }

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
