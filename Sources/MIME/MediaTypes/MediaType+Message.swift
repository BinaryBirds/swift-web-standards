//
//  MediaType+Message.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Message {

        static let name: String = "message"

        public static var all: [MediaType] {
            [
                bhttp(),
                cpim(),
                deliveryStatus(),
                dispositionNotification(),
                externalBody(),
                feedbackReport(),
                global(),
                globalDeliveryStatus(),
                globalDispositionNotification(),
                globalHeaders(),
                http(),
                imdnXml(),
                mls(),
                news(),
                ohttpReq(),
                ohttpRes(),
                partial(),
                rfc822(),
                sHttp(),
                sip(),
                sipfrag(),
                trackingStatus(),
                vndSiSimp(),
                vndWfaWsc(),
            ]
        }

        public static func bhttp() -> MediaType {
            .init(
                type: name,
                subtype: "bhttp",
                source: .iana
            )
        }

        public static func cpim() -> MediaType {
            .init(
                type: name,
                subtype: "cpim",
                source: .iana
            )
        }

        public static func deliveryStatus() -> MediaType {
            .init(
                type: name,
                subtype: "delivery-status",
                source: .iana
            )
        }

        public static func dispositionNotification() -> MediaType {
            .init(
                type: name,
                subtype: "disposition-notification",
                possibleExtensions: [
                    "disposition-notification"
                ],
                source: .iana
            )
        }

        public static func externalBody() -> MediaType {
            .init(
                type: name,
                subtype: "external-body",
                source: .iana
            )
        }

        public static func feedbackReport() -> MediaType {
            .init(
                type: name,
                subtype: "feedback-report",
                source: .iana
            )
        }

        public static func global() -> MediaType {
            .init(
                type: name,
                subtype: "global",
                possibleExtensions: [
                    "u8msg"
                ],
                source: .iana
            )
        }

        public static func globalDeliveryStatus() -> MediaType {
            .init(
                type: name,
                subtype: "global-delivery-status",
                possibleExtensions: [
                    "u8dsn"
                ],
                source: .iana
            )
        }

        public static func globalDispositionNotification() -> MediaType {
            .init(
                type: name,
                subtype: "global-disposition-notification",
                possibleExtensions: [
                    "u8mdn"
                ],
                source: .iana
            )
        }

        public static func globalHeaders() -> MediaType {
            .init(
                type: name,
                subtype: "global-headers",
                possibleExtensions: [
                    "u8hdr"
                ],
                source: .iana
            )
        }

        public static func http() -> MediaType {
            .init(
                type: name,
                subtype: "http",
                source: .iana
            )
        }

        public static func imdnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "imdn",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mls() -> MediaType {
            .init(
                type: name,
                subtype: "mls",
                source: .iana
            )
        }

        public static func news() -> MediaType {
            .init(
                type: name,
                subtype: "news",
                source: .apache
            )
        }

        public static func ohttpReq() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-req",
                source: .iana
            )
        }

        public static func ohttpRes() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-res",
                source: .iana
            )
        }

        public static func partial() -> MediaType {
            .init(
                type: name,
                subtype: "partial",
                source: .iana
            )
        }

        public static func rfc822() -> MediaType {
            .init(
                type: name,
                subtype: "rfc822",
                possibleExtensions: [
                    "eml",
                    "mime",
                    "mht",
                    "mhtml",
                ],
                source: .iana
            )
        }

        public static func sHttp() -> MediaType {
            .init(
                type: name,
                subtype: "s-http",
                source: .apache
            )
        }

        public static func sip() -> MediaType {
            .init(
                type: name,
                subtype: "sip",
                source: .iana
            )
        }

        public static func sipfrag() -> MediaType {
            .init(
                type: name,
                subtype: "sipfrag",
                source: .iana
            )
        }

        public static func trackingStatus() -> MediaType {
            .init(
                type: name,
                subtype: "tracking-status",
                source: .iana
            )
        }

        public static func vndSiSimp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.si.simp",
                source: .apache
            )
        }

        public static func vndWfaWsc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.wsc",
                possibleExtensions: [
                    "wsc"
                ],
                source: .iana
            )
        }

    }

}
