/// Provides child element storage and helpers.
public protocol Container {
    /// The child elements contained in the container.
    var children: [Element] { get set }
}

extension Container where Self: Mutable {

    /// Appends a child element.
    public func addChild(
        _ element: Element
    ) -> Self {
        modify {
            $0.children.append(element)
        }
    }

    /// Appends multiple child elements.
    public func addChildren<T: Element>(
        _ elements: [T]
    ) -> Self {
        modify {
            $0.children.append(contentsOf: elements)
        }
    }
}
