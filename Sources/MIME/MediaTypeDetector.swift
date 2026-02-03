//
//  MediaTypeDetector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

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
/// A utility for resolving the most likely media type for a given file extension.
///
/// `MediaTypeDetector` evaluates a set of known ``MediaType`` values and
/// determines the best match based on declared file extensions and an internal
/// scoring heuristic.
///
// MARK: -
/// A registry for resolving media types based on file extensions.
///
/// `MediaTypeDetector` uses a predefined list of known media types to determine
/// the most likely `MediaType` for a given file extension.
public struct MediaTypeDetector {

    /// The collection of media types known to the detector.
    ///
    /// This list is used as the lookup source when resolving file extensions.
    var knownMediaTypes: [MediaType]

    /// Creates a new media type detector.
    ///
    /// - Parameter knownMediaTypes: The media types available for detection.
    ///   Defaults to ``MediaType/all``.
    public init(
        knownMediaTypes: [MediaType] = MediaType.all
    ) {
        self.knownMediaTypes = knownMediaTypes
    }

    /// Returns the most likely media type for a given file extension.
    ///
    /// The detector filters all known media types that declare support for the
    /// provided extension and selects the best candidate based on an internal
    /// scoring heuristic.
    ///
    /// If multiple media types match the same extension, the one with the
    /// highest adjusted score is returned.
    ///
    /// - Parameter ext: A file extension (without a leading dot).
    /// - Returns: The most likely matching `MediaType`, or `nil` if no match
    ///   is found.
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
}
// MARK: -
