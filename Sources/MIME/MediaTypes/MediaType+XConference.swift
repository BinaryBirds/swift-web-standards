//
//  MediaType+XConference.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum XConference {

        static let name: String = "x-conference"

        public static var all: [MediaType] {
            [
                xCooltalk()
            ]
        }

        public static func xCooltalk() -> MediaType {
            .init(
                type: name,
                subtype: "x-cooltalk",
                possibleExtensions: [
                    "ice"
                ],
                source: .apache
            )
        }

    }

}
