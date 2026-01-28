extension MediaType.Source {

    // actually, these are priorities, not scores
    var score: Double {
        switch self {
        case .iana: 40
        case .unknown: 30
        case .apache: 20
        case .nginx: 10
        }
    }
}

extension MediaType {

    // Source: https://github.com/broofa/mime-score
    var defaultFacetScore: Double { 900 }
    var facetScores: [String: Double] {
        [
            "prs.": 100,
            "x-": 200,
            "x.": 300,
            "vnd.": 400,
        ]
    }

    var typeScores: [String: Double] {
        [
            "video": 4,
            "audio": 3,
            "font": 2,
            "application": 1,
        ]
    }

    var score: Double {
        var score: Double = 0

        var shouldAddDefaultFacetScore = true
        for (key, value) in facetScores where subtype.rawValue.hasPrefix(key) {
            shouldAddDefaultFacetScore = false
            score += value
        }
        if shouldAddDefaultFacetScore {
            score += defaultFacetScore
        }

        for (key, value) in typeScores where type == key {
            score += value
        }
        let lengthScore = 1 - Double(rawValue.count) / 100
        return score + source.score + lengthScore
    }
}

public struct MediaTypeDetector {

    // MARK: -

    var knownMediaTypes: [MediaType]

    public init(
        knownMediaTypes: [MediaType] = MediaType.all
    ) {
        self.knownMediaTypes = knownMediaTypes
    }

    public func getPossibleMediaTypeForExtension(
        _ ext: String
    ) -> MediaType? {
        var type: MediaType?
        var currentScore: Double = 0

        let possibleMediaTypes =
            knownMediaTypes
            .filter { $0.possibleExtensions.contains(ext) }

        for mediaType in possibleMediaTypes {
            // TODO: fix this later, hotfix for detector tests
            let newScore = mediaType.score - mediaType.source.score
            if type == nil || newScore > currentScore {
                type = mediaType
                currentScore = newScore
            }
        }
        return type
    }

    // MARK: -

}
