/// type/subtype;parameter=value
public struct MediaType: Sendable, Equatable, Codable, Hashable {

    public enum Source: String, Sendable, Equatable, Codable, Hashable {
        case apache
        case iana
        case nginx
        case unknown
    }
    
    
    public struct Parameter: Sendable, Equatable, Codable, Hashable {
        public var key: String
        public var value: String?

        public init(
            key: String,
            value: String
        ) {
            self.key = key
            self.value = value
        }

        public var rawValue: String {
            var result = key
            if let value, !value.isEmpty {
                result += "="
                result += value
            }
            return result
        }
    }

    public struct Subtype: Sendable, Equatable, Codable, Hashable, ExpressibleByStringLiteral {

        public struct Suffix: Sendable, Equatable, Codable, Hashable, ExpressibleByStringLiteral {

            public var value: String

            public init(value: String) {
                self.value = value
            }

            public init(
                stringLiteral value: StringLiteralType
            ) {
                self.init(value: value)
            }

        }

        public var value: String
        public var suffix: Suffix?

        public init(
            value: String,
            suffix: Suffix? = nil
        ) {
            self.value = value
            self.suffix = suffix
        }

        public init(
            stringLiteral value: StringLiteralType
        ) {
            self.init(value: value, suffix: nil)
        }

        public var rawValue: String {
            var result = value
            if let suffix, !suffix.value.isEmpty {
                result += "+"
                result += suffix.value
            }
            return result
        }
    }

    public var type: String
    public var subtype: Subtype
    public var parameter: Parameter?
    public var possibleExtensions: [String]
    public var source: Source

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

    public var rawValue: String {
        var value = "\(type)/\(subtype.rawValue)"
        if let parameter, !parameter.rawValue.isEmpty {
            value += "; " + parameter.rawValue
        }
        return value
    }

    public static var all: [MediaType] {
        MediaType.Audio.all + MediaType.Chemical.all + MediaType.Font.all
            + MediaType.Image.all + MediaType.Message.all + MediaType.Model.all
            + MediaType.Multipart.all + MediaType.Text.all + MediaType.Video.all
            + MediaType.XConference.all + MediaType.XShader.all
            + MediaType.Application.all
    }
}
