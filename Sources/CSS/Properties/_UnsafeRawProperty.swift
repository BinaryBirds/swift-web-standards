//
//  File.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 06..
//

public struct UnsafeRawProperty: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    public init(
        name: String,
        value: String,
        isImportant: Bool = false
    ) {
        self.name = name
        self.value = value
        self.isImportant = isImportant
    }
}
