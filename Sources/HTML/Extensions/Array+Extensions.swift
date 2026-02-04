//
//  Array+Extensions.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

extension Array {

    func joinedElementsAsString(
        separator: String = ","
    ) -> String {
        map { "\($0)" }.joined(separator: separator)
    }
}
