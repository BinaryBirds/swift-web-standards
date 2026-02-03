//
//  MediaType+XShader.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum XShader {

        static let name: String = "x-shader"

        public static var all: [MediaType] {
            [
                xFragment(),
                xVertex(),
            ]
        }

        public static func xFragment() -> MediaType {
            .init(
                type: name,
                subtype: "x-fragment"
            )
        }

        public static func xVertex() -> MediaType {
            .init(
                type: name,
                subtype: "x-vertex"
            )
        }

    }

}
