//
//  File 2.swift
//  puppylepsy-web-app
//
//  Created by Tibor Bödecs on 2026. 03. 01..
//

func camelToHyphens(
    _ string: String
) -> String {
    guard !string.isEmpty else { return string }

    var result = ""
    var previous: Character?
    var iterator = string.makeIterator()
    var current = iterator.next()

    while let char = current {
        let next = iterator.next()

        if char.isUppercase {
            if let prev = previous {
                // Insert hyphen if:
                // 1) previous is lowercase or digit  (userID → user_id)
                // 2) previous is uppercase AND next is lowercase (HTTPRequest → http_request)
                if prev.isLowercase || prev.isNumber
                    || (prev.isUppercase && next?.isLowercase == true)
                {
                    result.append("-")
                }
            }
            result.append(char.lowercased())
        }
        else {
            result.append(char)
        }

        previous = char
        current = next
    }

    return result
}
