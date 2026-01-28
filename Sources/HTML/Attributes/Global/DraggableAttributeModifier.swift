import SGML

//public enum Draggable: String {
//    /// Specifies that the element is draggable
//    case `true`
//    /// Specifies that the element is not draggable
//    case `false`
//    /// Uses the default behavior of the browser
//    case auto
//}

/// Provides access to the HTML `draggable` global attribute.
public protocol DraggableAttributeModifier {
    associatedtype DraggableAttributeValueType: AttributeValueRepresentable =
        String
}

extension DraggableAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `draggable` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func draggable(
        _ value: DraggableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.draggable,
            value: value?.attributeValue
        )
    }
}
