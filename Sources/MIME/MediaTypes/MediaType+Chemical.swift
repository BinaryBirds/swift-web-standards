//
//  MediaType+Chemical.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Chemical {

        static let name: String = "chemical"

        public static var all: [MediaType] {
            [
                xCdx(),
                xCif(),
                xCmdf(),
                xCml(),
                xCsml(),
                xPdb(),
                xXyz(),
            ]
        }

        public static func xCdx() -> MediaType {
            .init(
                type: name,
                subtype: "x-cdx",
                possibleExtensions: [
                    "cdx"
                ],
                source: .apache
            )
        }

        public static func xCif() -> MediaType {
            .init(
                type: name,
                subtype: "x-cif",
                possibleExtensions: [
                    "cif"
                ],
                source: .apache
            )
        }

        public static func xCmdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmdf",
                possibleExtensions: [
                    "cmdf"
                ],
                source: .apache
            )
        }

        public static func xCml() -> MediaType {
            .init(
                type: name,
                subtype: "x-cml",
                possibleExtensions: [
                    "cml"
                ],
                source: .apache
            )
        }

        public static func xCsml() -> MediaType {
            .init(
                type: name,
                subtype: "x-csml",
                possibleExtensions: [
                    "csml"
                ],
                source: .apache
            )
        }

        public static func xPdb() -> MediaType {
            .init(
                type: name,
                subtype: "x-pdb",
                source: .apache
            )
        }

        public static func xXyz() -> MediaType {
            .init(
                type: name,
                subtype: "x-xyz",
                possibleExtensions: [
                    "xyz"
                ],
                source: .apache
            )
        }

    }

}
