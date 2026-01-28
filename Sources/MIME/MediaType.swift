/// A representation of an Internet media type (also known as a MIME type).
///
/// A media type is commonly formatted as:
///
/// ```
/// type/subtype+suffix; parameter=value
/// ```
///
/// Examples:
/// - `text/html`
/// - `application/json`
/// - `application/ld+json; charset=utf-8`
///
/// `MediaType` provides both a structured representation (type, subtype, suffix, parameter)
/// and a string representation via ``rawValue``. You can also parse a media type string
/// using ``init(rawValue:)``.
public struct MediaType: Sendable, Equatable, Codable, Hashable {

    /// Indicates the registry or software source from which a media type definition originates.
    public enum Source: String, Sendable, Equatable, Codable, Hashable {

        /// Defined by the Apache HTTP Server project.
        case apache

        /// Registered with the Internet Assigned Numbers Authority (IANA).
        case iana

        /// Defined or used by the NGINX web server.
        case nginx

        /// An unknown or unspecified source.
        case unknown
    }

    /// A key–value parameter associated with a media type.
    ///
    /// Parameters commonly convey metadata such as character encoding.
    ///
    /// Example:
    /// ```
    /// charset=utf-8
    /// ```
    public struct Parameter: Sendable, Equatable, Codable, Hashable {

        /// The parameter name.
        public var key: String

        /// The parameter value.
        ///
        /// If `nil` or empty, the parameter is treated as having no explicit value.
        public var value: String?

        /// Creates a new parameter.
        ///
        /// - Parameters:
        ///   - key: The parameter name.
        ///   - value: The parameter value.
        public init(
            key: String,
            value: String
        ) {
            self.key = key
            self.value = value
        }

        /// The parameter as it would appear in a media type string.
        ///
        /// Example:
        /// - `charset=utf-8`
        public var rawValue: String {
            var result = key
            if let value, !value.isEmpty {
                result += "="
                result += value
            }
            return result
        }
    }

    /// A media type subtype, optionally including a structured syntax suffix.
    ///
    /// Subtypes can be created from string literals. In that case, the literal is
    /// interpreted as the subtype value without a suffix.
    public struct Subtype: Sendable, Equatable, Codable, Hashable,
        ExpressibleByStringLiteral
    {

        /// A structured syntax suffix appended to a subtype (for example `+json`).
        public struct Suffix: Sendable, Equatable, Codable, Hashable,
            ExpressibleByStringLiteral
        {

            /// The suffix value (for example `json` in `ld+json`).
            public var value: String

            /// Creates a new suffix.
            ///
            /// - Parameter value: The suffix value.
            public init(value: String) {
                self.value = value
            }

            /// Creates a suffix from a string literal.
            public init(
                stringLiteral value: StringLiteralType
            ) {
                self.init(value: value)
            }
        }

        /// The subtype value (for example `ld` in `ld+json`).
        public var value: String

        /// An optional structured syntax suffix.
        public var suffix: Suffix?

        /// Creates a new subtype.
        ///
        /// - Parameters:
        ///   - value: The subtype value.
        ///   - suffix: An optional structured suffix.
        public init(
            value: String,
            suffix: Suffix? = nil
        ) {
            self.value = value
            self.suffix = suffix
        }

        /// Creates a subtype from a string literal without a suffix.
        public init(
            stringLiteral value: StringLiteralType
        ) {
            self.init(value: value, suffix: nil)
        }

        /// The subtype as it would appear in a media type string.
        ///
        /// Examples:
        /// - `json`
        /// - `ld+json`
        public var rawValue: String {
            var result = value
            if let suffix, !suffix.value.isEmpty {
                result += "+"
                result += suffix.value
            }
            return result
        }
    }

    /// The top-level type (for example `text` or `application`).
    public var type: String

    /// The subtype (and optional suffix) component.
    public var subtype: Subtype

    /// An optional parameter associated with the media type.
    public var parameter: Parameter?

    /// File extensions commonly associated with this media type (without a leading dot).
    public var possibleExtensions: [String]

    /// The origin or registry source of this media type definition.
    public var source: Source

    /// Creates a new media type.
    ///
    /// - Parameters:
    ///   - type: The top-level type.
    ///   - subtype: The subtype (and optional suffix).
    ///   - parameter: An optional parameter.
    ///   - possibleExtensions: File extensions commonly associated with this media type.
    ///   - source: The origin or registry source.
    public init(
        type: String,
        subtype: Subtype,
        parameter: Parameter? = nil,
        possibleExtensions: [String] = [],
        source: Source = .unknown
    ) {
        self.type = type
        self.subtype = subtype
        self.parameter = parameter
        self.possibleExtensions = possibleExtensions
        self.source = source
    }

    /// The canonical string representation of the media type.
    ///
    /// Example:
    /// ```
    /// application/json; charset=utf-8
    /// ```
    public var rawValue: String {
        var value = "\(type)/\(subtype.rawValue)"
        if let parameter, !parameter.rawValue.isEmpty {
            value += "; " + parameter.rawValue
        }
        return value
    }

    /// All known media types provided by this module.
    ///
    /// This aggregates media types from all supported top-level type namespaces.
    public static var all: [MediaType] {
        MediaType.Audio.all + MediaType.Chemical.all + MediaType.Font.all
            + MediaType.Image.all + MediaType.Message.all + MediaType.Model.all
            + MediaType.Multipart.all + MediaType.Text.all + MediaType.Video.all
            + MediaType.XConference.all + MediaType.XShader.all
            + MediaType.Application.all
    }

    /// Creates a media type by parsing a raw string value.
    ///
    /// The parser expects a value in the form:
    /// ```
    /// type/subtype+suffix; parameter=value
    /// ```
    ///
    /// - Parameter rawValue: The raw media type string.
    /// - Note: This initializer currently parses at most one parameter pair (`key=value`)
    ///   and does not normalize whitespace or casing.
    public init?(
        rawValue: String
    ) {
        let parts = rawValue.split(
            separator: ";",
            omittingEmptySubsequences: true
        )
        guard let typePart = parts.first else { return nil }

        let typeComponents = typePart.split(
            separator: "/",
            omittingEmptySubsequences: true
        )
        guard typeComponents.count == 2 else { return nil }

        self.type = String(typeComponents[0])
        let subtypeComponents = typeComponents[1]
            .split(
                separator: "+",
                maxSplits: 1
            )
        let subtype = String(subtypeComponents[0])
        let suffix =
            subtypeComponents.count == 2 ? String(subtypeComponents[1]) : nil

        self.subtype = .init(
            value: subtype,
            suffix: suffix.map { .init(value: $0) }
        )

        if parts.count == 2 {
            let kv = parts[1].split(separator: "=", maxSplits: 1)
            if kv.count == 2 {
                let key = String(kv[0])
                let value = String(kv[1])
                self.parameter = .init(key: key, value: value)
            }
        }
        else {
            self.parameter = nil
        }
        self.source = .unknown
        self.possibleExtensions = []
    }
}
