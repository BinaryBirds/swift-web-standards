public struct MediaTypeDetector {

    public enum Source: Double {
        case nginx = 10
        case apache = 20
        case `default` = 30
        case iana = 40
    }

    // Source: https://github.com/broofa/mime-score
    let defaultFacetScore: Double = 900
    let facetScores: [String: Double] = [
        "prs.": 100,
        "x-": 200,
        "x.": 300,
        "vnd.": 400,
    ]

    // priorities, not scores
    let typeScores: [String: Double] = [
        "video": 4,
        "audio": 3,
        "font": 2,
        "application": 1,
    ]

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
        
        let possibleMediaTypes = knownMediaTypes
            .filter { $0.possibleExtensions.contains(ext) }

        for mediaType in possibleMediaTypes {
            let newScore = getMIMEScore(for: mediaType.rawValue)
            if type == nil || newScore > currentScore {
                type = mediaType
                currentScore = newScore
            }
        }
        return type
    }

    // MARK: -
    
    func getMIMEScore(
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
