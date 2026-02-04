//
//  AudioTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct AudioTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Audio {
            Text("Lorem ipsum.")
        }
        .src("test.mp3")
        .controls()
        .crossOrigin(.anonymous)
        .preload(.auto)
        .autoPlay()
        .muted()
        .loop()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio src="test.mp3" controls crossorigin="anonymous" preload="auto" autoplay muted loop>Lorem ipsum.</audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func sourcesWithFallback() async throws {
        let tag = Audio {
            Source()
                .src("track.ogg")
                .type("audio/ogg")
            Source()
                .src("track.mp3")
                .type("audio/mpeg")
            Text("Your browser does not support the audio element.")
        }
        .controls()
        .preload(.metadata)

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <audio controls preload="metadata">
                <source src="track.ogg" type="audio/ogg">
                <source src="track.mp3" type="audio/mpeg">
                Your browser does not support the audio element.
            </audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func attributesOnly() async throws {
        let tag = Audio("Fallback")
            .src("track.wav")
            .crossOrigin(.useCredentials)
            .preload(PreloadAttributeValue.none)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio src="track.wav" crossorigin="use-credentials" preload="none">Fallback</audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
