import SGML

/// A `version` attribute specifying the version of a document format.
///
/// This attribute is commonly used in XML-based formats such as RSS to declare
/// the version of the specification being used.
///
/// If no value is provided, the default version `"2.0"` is used.
public struct Version: Attribute {

    /// The string value of the version attribute.
    public var value: String?

    /// Creates a `version` attribute.
    ///
    /// - Parameter value: The version string to use. Defaults to `"2.0"`.
    ///
    /// ## Example
    /// ```swift
    /// Version()
    /// Version("2.0")
    /// ```
    public init(
        _ value: String? = "2.0"
    ) {
        self.value = value
    }
}
