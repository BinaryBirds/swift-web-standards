extension MediaType {

    public enum Font {

        static let name: String = "font"

        public static var all: [MediaType] {
            [
                collection(),
                otf(),
                sfnt(),
                ttf(),
                woff(),
                woff2(),
            ]
        }

        public static func collection() -> MediaType {
            .init(
                type: name,
                subtype: "collection",
                possibleExtensions: [
                    "ttc"
                ],
                source: .iana
            )
        }

        public static func otf() -> MediaType {
            .init(
                type: name,
                subtype: "otf",
                possibleExtensions: [
                    "otf"
                ],
                source: .iana
            )
        }

        public static func sfnt() -> MediaType {
            .init(
                type: name,
                subtype: "sfnt",
                source: .iana
            )
        }

        public static func ttf() -> MediaType {
            .init(
                type: name,
                subtype: "ttf",
                possibleExtensions: [
                    "ttf"
                ],
                source: .iana
            )
        }

        public static func woff() -> MediaType {
            .init(
                type: name,
                subtype: "woff",
                possibleExtensions: [
                    "woff"
                ],
                source: .iana
            )
        }

        public static func woff2() -> MediaType {
            .init(
                type: name,
                subtype: "woff2",
                possibleExtensions: [
                    "woff2"
                ],
                source: .iana
            )
        }

    }

}
