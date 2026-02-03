//
//  MediaTypeDetectorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import MIME

@Suite
struct MediaTypeDetectorTestSuite {

    @Test
    func standardTypes() async throws {
        let detector = MediaTypeDetector()

        let html = MediaType.Text.html()
        let text = MediaType.Text.plain()

        let htmlType = detector.getPossibleMediaTypeForExtension("html")
        let textType = detector.getPossibleMediaTypeForExtension("txt")

        #expect(html == htmlType)
        #expect(text == textType)
    }

    @Test
    func commonExtensions() {
        let testCases: [String: MediaType] = [
            // application
            "js": .Application.javascript(),
            "mjs": .Application.javascript(),
            "json": .Application.json(),
            "jsonld": .Application.ldJson(),

            "mpkg": .Application.vndAppleInstallerXml(),
            "odp": .Application.vndOasisOpendocumentPresentation(),
            "ods": .Application.vndOasisOpendocumentSpreadsheet(),
            "odt": .Application.vndOasisOpendocumentText(),
            "ogx": .Application.ogg(),
            "pdf": .Application.pdf(),
            "php": .Application.xHttpdPhp(),
            "ppt": .Application.vndMsPowerpoint(),
            "pptx": .Application
                .vndOpenxmlformatsOfficedocumentPresentationmlPresentation(),
            "rar": .Application.vndRar(),
            "rtf": .Application.rtf(),
            "sh": .Application.xSh(),
            "tar": .Application.xTar(),
            "vsd": .Application.vndVisio(),
            "xhtml": .Application.xhtmlXml(),
            "xls": .Application.vndMsExcel(),
            "xlsx": .Application
                .vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet(),
            "xml": .Application.xml(),
            "xul": .Application.vndMozillaXulXml(),
            "zip": .Application.zip(),
            "7z": .Application.x7zCompressed(),
            "exe": .Application.octetStream(),
            "dll": .Application.octetStream(),
            // audio
            "aac": .Audio.aac(),
            "mid": .Audio.midi(),
            "midi": .Audio.midi(),
            "mp3": .Audio.mp3(),
            "oga": .Audio.ogg(),
            "opus": .Audio.ogg(),
            "wav": .Audio.wav(),
            "weba": .Audio.webm(),
            // video
            "mp4": .Video.mp4(),
            "mpeg": .Video.mpeg(),
            "ogv": .Video.ogg(),
            "3gp": .Video._3gpp(),
            "3g2": .Video._3gpp2(),
            "ts": .Video.mp2t(),
            "webm": .Video.webm(),
            // font
            "otf": .Font.otf(),
            "ttf": .Font.ttf(),
            "woff": .Font.woff(),
            "woff2": .Font.woff2(),
            // image
            "png": .Image.png(),
            "svg": .Image.svgXml(),
            "tif": .Image.tiff(),
            "tiff": .Image.tiff(),
            "webp": .Image.webp(),
            // text
            "txt": .Text.plain(),
            // TODO: lower priority for octet-stream
            // "exe": "application/x-msdos-program",
            // "dll": "application/x-msdownload",
            // "deb": "application/x-debian-package",
            // "dmg": "application/x-apple-diskimage",
            // "iso": "application/x-iso9660-image",
            // "msi": "application/x-msdownload",
        ]

        let detector = MediaTypeDetector()
        for (ext, expectedType) in testCases {

            let type = detector.getPossibleMediaTypeForExtension(ext)
            #expect(type == expectedType)
        }
    }
}
