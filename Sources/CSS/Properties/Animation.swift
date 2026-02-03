//
//  Animation.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `animation` property.
/// Provides typed values for this declaration.
public struct Animation: Property {
    /// Value options for the `animation` property.
    public enum Value: Sendable {

        case values(
            String,
            AnimationDuration.Value?,
            AnimationTimingFunction.Value?,
            AnimationDelay.Value?,
            AnimationIterationCount.Value?,
            AnimationDirection.Value?,
            AnimationFillMode.Value?,
            AnimationPlayState.Value?
        )

        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let name,
                let duration,
                let timingFunction,
                let delay,
                let iterationCount,
                let direction,
                let fillMode,
                let playState
            ):
                return [
                    name,
                    duration?.rawValue,
                    timingFunction?.rawValue,
                    delay?.rawValue,
                    iterationCount?.rawValue,
                    direction?.rawValue,
                    fillMode?.rawValue,
                    playState?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the animation-* properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "animation"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the animation-* properties.
    /// - Parameters:
    ///   - name: The name value.
    ///   - duration: The duration value.
    ///   - timingFunction: The timingFunction value.
    ///   - delay: The delay value.
    ///   - iterationCount: The iterationCount value.
    ///   - direction: The direction value.
    ///   - fillMode: The fillMode value.
    ///   - playState: The playState value.
    public init(
        _ name: String,
        duration: AnimationDuration.Value? = nil,
        timingFunction: AnimationTimingFunction.Value? = nil,
        delay: AnimationDelay.Value? = nil,
        iterationCount: AnimationIterationCount.Value? = nil,
        direction: AnimationDirection.Value? = nil,
        fillMode: AnimationFillMode.Value? = nil,
        playState: AnimationPlayState.Value?
    ) {
        self.init(
            .values(
                name,
                duration,
                timingFunction,
                delay,
                iterationCount,
                direction,
                fillMode,
                playState
            )
        )
    }
}
