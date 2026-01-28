extension MediaType {

    public enum Multipart {

        static let name: String = "multipart"

        public static var all: [MediaType] {
            [
                alternative(),
                appledouble(),
                byteranges(),
                digest(),
                encrypted(),
                formData(boundary: ""),
                headerSet(),
                mixed(),
                multilingual(),
                parallel(),
                related(),
                report(),
                signed(),
                vndBintMedPlus(),
                voiceMessage(),
                xMixedReplace(),
            ]
        }

        public static func alternative() -> MediaType {
            .init(
                type: name,
                subtype: "alternative",
                source: .iana
            )
        }

        public static func appledouble() -> MediaType {
            .init(
                type: name,
                subtype: "appledouble",
                source: .iana
            )
        }

        public static func byteranges() -> MediaType {
            .init(
                type: name,
                subtype: "byteranges",
                source: .iana
            )
        }

        public static func digest() -> MediaType {
            .init(
                type: name,
                subtype: "digest",
                source: .iana
            )
        }

        public static func encrypted() -> MediaType {
            .init(
                type: name,
                subtype: "encrypted",
                source: .iana
            )
        }

        public static func formData(
            boundary value: String
        ) -> MediaType {
            .init(
                type: name,
                subtype: "form-data",
                parameter: .init(
                    key: "boundary",
                    value: value
                ),
                source: .iana
            )
        }

        public static func headerSet() -> MediaType {
            .init(
                type: name,
                subtype: "header-set",
                source: .iana
            )
        }

        public static func mixed() -> MediaType {
            .init(
                type: name,
                subtype: "mixed",
                source: .iana
            )
        }

        public static func multilingual() -> MediaType {
            .init(
                type: name,
                subtype: "multilingual",
                source: .iana
            )
        }

        public static func parallel() -> MediaType {
            .init(
                type: name,
                subtype: "parallel",
                source: .iana
            )
        }

        public static func related() -> MediaType {
            .init(
                type: name,
                subtype: "related",
                source: .iana
            )
        }

        public static func report() -> MediaType {
            .init(
                type: name,
                subtype: "report",
                source: .iana
            )
        }

        public static func signed() -> MediaType {
            .init(
                type: name,
                subtype: "signed",
                source: .iana
            )
        }

        public static func vndBintMedPlus() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bint.med-plus",
                source: .iana
            )
        }

        public static func voiceMessage() -> MediaType {
            .init(
                type: name,
                subtype: "voice-message",
                source: .iana
            )
        }

        public static func xMixedReplace() -> MediaType {
            .init(
                type: name,
                subtype: "x-mixed-replace",
                source: .iana
            )
        }

    }

}
