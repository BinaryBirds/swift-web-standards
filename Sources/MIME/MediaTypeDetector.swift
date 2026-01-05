public struct MediaTypeDetector {

    private var definitions: [String: [String]]

    public init(_ definition: Definition = .known) {
        self.definitions = definition.values
    }

    public mutating func add(_ definition: Definition) {
        for (key, value) in definition.values {
            definitions[key] = value
        }
    }

    public func getType(for ext: String) -> String? {
        var type: String?
        var currentScore: Double = 0

        for (key, value) in definitions where value.contains(ext) {
            let newScore = getMIMEScore(for: key)
            if type == nil || newScore > currentScore {
                type = key
                currentScore = newScore
            }
        }
        return type
    }

    public func getExtension(for type: String) -> String? {
        definitions.first { $0.key == type }?.value.first
    }
    
    // Source: https://github.com/broofa/mime-score
    let defaultFacetScore: Double = 900
    let facetScores: [String: Double] = [
        "prs.": 100,
        "x-": 200,
        "x.": 300,
        "vnd.": 400,
    ]

    let typeScores: [String: Double] = [
        "application": 1,
        "font": 2,
    ]

    public enum Source: Double {
        case nginx = 10
        case apache = 20
        case `default` = 30
        case iana = 40
    }

    public func getMIMEScore(
        for mime: String,
        source: Source = .default
    ) -> Double {
        var score: Double = 0
        let parts = mime.split(separator: "/")
        guard parts.count == 2 else {
            return score
        }

        let type = parts[0]
        let subtype = parts[1]

        var shouldAddDefaultFacetScore = true
        for (key, value) in facetScores where subtype.hasPrefix(key) {
            shouldAddDefaultFacetScore = false
            score += value
        }
        if shouldAddDefaultFacetScore {
            score += defaultFacetScore
        }

        for (key, value) in typeScores where type == key {
            score += value
        }
        let lengthScore = 1 - Double(mime.count) / 100
        return score + source.rawValue + lengthScore
    }

    
}

public enum Definition {
    case standard
    case nonStandard
    case known
    case custom([String: [String]])
}

extension Definition {

    public static func union(_ definitions: Definition...) -> Definition {
        var values: [String: [String]] = [:]

        for def in definitions {
            for (key, value) in def.values {
                if values[key] == nil {
                    values[key] = []
                }
                var extensions = values[key]!
                for ext in value {
                    if !extensions.contains(ext) {
                        extensions.append(ext)
                    }
                }
                values[key] = extensions
            }
        }
        return .custom(values)
    }
}

extension Definition {

    var values: [String: [String]] {
        switch self {
        case .standard:
            return standardDefinitions
        case .nonStandard:
            return nonStandardDefinitions
        case .known:
            return Definition.union(.standard, .nonStandard).values
        case .custom(let values):
            return values
        }
    }
}
