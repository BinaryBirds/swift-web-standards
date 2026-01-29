/// Provides attribute storage and mutation APIs.
public protocol Attributes {
    /// The attribute storage for the element.
    var attributes: AttributeStore { get set }
}

extension Attributes where Self: Mutable {

    /// Sets an attribute value.
    public func setAttribute(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.set(name: name, value: value)
        }
    }

    /// Sets an attribute value.
    public func setAttribute<T: Attribute>(
        _ attribute: T
    ) -> Self {
        setAttribute(name: T.name, value: attribute.value)
    }

    /// Sets multiple attribute values.
    public func setAttributes<T: Attribute>(
        _ attributes: [T]
    ) -> Self {
        modify {
            for attribute in attributes {
                $0.attributes.set(name: T.name, value: attribute.value)
            }
        }
    }

    // MARK: - add

    /// Adds an attribute value.
    public func addAttribute(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.add(name: name, value: value)
        }
    }

    /// Adds an attribute value.
    public func addAttribute<T: Attribute>(
        _ attribute: T
    ) -> Self {
        addAttribute(name: T.name, value: attribute.value)
    }

    /// Adds multiple attribute values.
    public func addAttributes<T: Attribute>(
        _ attributes: [T]
    ) -> Self {
        modify {
            for attribute in attributes {
                $0.attributes.add(name: T.name, value: attribute.value)
            }
        }
    }

    // MARK: - remove

    /// Removes an attribute or attribute value.
    public func removeAttribute(
        name: String
    ) -> Self {
        modify {
            $0.attributes.remove(name: name)
        }
    }

    /// Removes an attribute or attribute value.
    public func removeAttribute<T: Attribute>(
        _: T.Type
    ) -> Self {
        removeAttribute(name: T.name)
    }

    /// Removes an attribute or attribute value.
    public func removeAttribute(
        name: String,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        modify {
            $0.attributes.remove(
                name: name,
                value: value,
                preservingEmptyAttribute: preservingEmptyAttribute
            )
        }
    }

    /// Removes an attribute or attribute value.
    public func removeAttribute<T: Attribute>(
        _ attribute: T,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: T.name,
            value: attribute.value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }

    // MARK: - has

    /// Returns whether an attribute is present.
    public func hasAttribute(
        name: String
    ) -> Bool {
        attributes.has(name: name)

    }

    /// Returns whether an attribute is present.
    public func hasAttribute<T: Attribute>(
        _: T.Type
    ) -> Bool {
        hasAttribute(name: T.name)
    }

    /// Returns whether an attribute is present.
    public func hasAttribute(
        name: String,
        value: String?
    ) -> Bool {
        attributes.has(name: name, value: value)

    }

    /// Returns whether an attribute is present.
    public func hasAttribute<T: Attribute>(
        _ attribute: T
    ) -> Bool {
        hasAttribute(name: T.name, value: attribute.value)
    }

    // MARK: - get

    /// Returns an attribute value.
    public func getAttribute(
        name: String
    ) -> String? {
        attributes.get(name: name)
    }

    /// Returns an attribute value.
    public func getAttribute<T: Attribute>(
        _: T.Type
    ) -> String? {
        getAttribute(name: T.name)
    }
}
