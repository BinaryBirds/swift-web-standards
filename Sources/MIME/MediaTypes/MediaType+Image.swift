//
//  MediaType+Image.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Image {

        static let name: String = "image"

        public static var all: [MediaType] {
            [
                aces(),
                apng(),
                avci(),
                avcs(),
                avif(),
                bmp(),
                cgm(),
                dicomRle(),
                dpx(),
                emf(),
                fits(),
                g3fax(),
                gif(),
                heic(),
                heicSequence(),
                heif(),
                heifSequence(),
                hej2k(),
                hsj2(),
                ief(),
                j2c(),
                jaii(),
                jais(),
                jls(),
                jp2(),
                jpeg(),
                jph(),
                jphc(),
                jpm(),
                jpx(),
                jxl(),
                jxr(),
                jxra(),
                jxrs(),
                jxs(),
                jxsc(),
                jxsi(),
                jxss(),
                ktx(),
                ktx2(),
                naplps(),
                pjpeg(),
                png(),
                prsBtif(),
                prsPti(),
                pwgRaster(),
                sgi(),
                svgXml(),
                t38(),
                tiff(),
                tiffFx(),
                vndAdobePhotoshop(),
                vndAirzipAcceleratorAzv(),
                vndBlockfactFacti(),
                vndClip(),
                vndCnsInf2(),
                vndDeceGraphic(),
                vndDjvu(),
                vndDvbSubtitle(),
                vndDwg(),
                vndDxf(),
                vndFastbidsheet(),
                vndFpx(),
                vndFst(),
                vndFujixeroxEdmicsMmr(),
                vndFujixeroxEdmicsRlc(),
                vndGlobalgraphicsPgb(),
                vndMicrosoftIcon(),
                vndMix(),
                vndMozillaApng(),
                vndMsDds(),
                vndMsModi(),
                vndMsPhoto(),
                vndNetFpx(),
                vndPcoB16(),
                vndRadiance(),
                vndSealedPng(),
                vndSealedmediaSoftsealGif(),
                vndSealedmediaSoftsealJpg(),
                vndSvf(),
                vndTencentTap(),
                vndValveSourceTexture(),
                vndWapWbmp(),
                vndXiff(),
                vndZbrushPcx(),
                webp(),
                wmf(),
                x3ds(),
                xAdobeDng(),
                xCmuRaster(),
                xCmx(),
                xEmf(),
                xFreehand(),
                xIcon(),
                xJng(),
                xMrsidImage(),
                xMsBmp(),
                xPcx(),
                xPict(),
                xPortableAnymap(),
                xPortableBitmap(),
                xPortableGraymap(),
                xPortablePixmap(),
                xRgb(),
                xTga(),
                xWmf(),
                xXbitmap(),
                xXcf(),
                xXpixmap(),
                xXwindowdump(),
            ]
        }

        public static func aces() -> MediaType {
            .init(
                type: name,
                subtype: "aces",
                possibleExtensions: [
                    "exr"
                ],
                source: .iana
            )
        }

        public static func apng() -> MediaType {
            .init(
                type: name,
                subtype: "apng",
                possibleExtensions: [
                    "apng"
                ],
                source: .iana
            )
        }

        public static func avci() -> MediaType {
            .init(
                type: name,
                subtype: "avci",
                possibleExtensions: [
                    "avci"
                ],
                source: .iana
            )
        }

        public static func avcs() -> MediaType {
            .init(
                type: name,
                subtype: "avcs",
                possibleExtensions: [
                    "avcs"
                ],
                source: .iana
            )
        }

        public static func avif() -> MediaType {
            .init(
                type: name,
                subtype: "avif",
                possibleExtensions: [
                    "avif"
                ],
                source: .iana
            )
        }

        public static func bmp() -> MediaType {
            .init(
                type: name,
                subtype: "bmp",
                possibleExtensions: [
                    "bmp",
                    "dib",
                ],
                source: .iana
            )
        }

        public static func cgm() -> MediaType {
            .init(
                type: name,
                subtype: "cgm",
                possibleExtensions: [
                    "cgm"
                ],
                source: .iana
            )
        }

        public static func dicomRle() -> MediaType {
            .init(
                type: name,
                subtype: "dicom-rle",
                possibleExtensions: [
                    "drle"
                ],
                source: .iana
            )
        }

        public static func dpx() -> MediaType {
            .init(
                type: name,
                subtype: "dpx",
                possibleExtensions: [
                    "dpx"
                ],
                source: .iana
            )
        }

        public static func emf() -> MediaType {
            .init(
                type: name,
                subtype: "emf",
                possibleExtensions: [
                    "emf"
                ],
                source: .iana
            )
        }

        public static func fits() -> MediaType {
            .init(
                type: name,
                subtype: "fits",
                possibleExtensions: [
                    "fits"
                ],
                source: .iana
            )
        }

        public static func g3fax() -> MediaType {
            .init(
                type: name,
                subtype: "g3fax",
                possibleExtensions: [
                    "g3"
                ],
                source: .iana
            )
        }

        public static func gif() -> MediaType {
            .init(
                type: name,
                subtype: "gif",
                possibleExtensions: [
                    "gif"
                ],
                source: .iana
            )
        }

        public static func heic() -> MediaType {
            .init(
                type: name,
                subtype: "heic",
                possibleExtensions: [
                    "heic"
                ],
                source: .iana
            )
        }

        public static func heicSequence() -> MediaType {
            .init(
                type: name,
                subtype: "heic-sequence",
                possibleExtensions: [
                    "heics"
                ],
                source: .iana
            )
        }

        public static func heif() -> MediaType {
            .init(
                type: name,
                subtype: "heif",
                possibleExtensions: [
                    "heif"
                ],
                source: .iana
            )
        }

        public static func heifSequence() -> MediaType {
            .init(
                type: name,
                subtype: "heif-sequence",
                possibleExtensions: [
                    "heifs"
                ],
                source: .iana
            )
        }

        public static func hej2k() -> MediaType {
            .init(
                type: name,
                subtype: "hej2k",
                possibleExtensions: [
                    "hej2"
                ],
                source: .iana
            )
        }

        public static func hsj2() -> MediaType {
            .init(
                type: name,
                subtype: "hsj2",
                possibleExtensions: [
                    "hsj2"
                ]
            )
        }

        public static func ief() -> MediaType {
            .init(
                type: name,
                subtype: "ief",
                possibleExtensions: [
                    "ief"
                ],
                source: .iana
            )
        }

        public static func j2c() -> MediaType {
            .init(
                type: name,
                subtype: "j2c",
                source: .iana
            )
        }

        public static func jaii() -> MediaType {
            .init(
                type: name,
                subtype: "jaii",
                possibleExtensions: [
                    "jaii"
                ],
                source: .iana
            )
        }

        public static func jais() -> MediaType {
            .init(
                type: name,
                subtype: "jais",
                possibleExtensions: [
                    "jais"
                ],
                source: .iana
            )
        }

        public static func jls() -> MediaType {
            .init(
                type: name,
                subtype: "jls",
                possibleExtensions: [
                    "jls"
                ],
                source: .iana
            )
        }

        public static func jp2() -> MediaType {
            .init(
                type: name,
                subtype: "jp2",
                possibleExtensions: [
                    "jp2",
                    "jpg2",
                ],
                source: .iana
            )
        }

        public static func jpeg() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg",
                possibleExtensions: [
                    "jpg",
                    "jpeg",
                    "jpe",
                ],
                source: .iana
            )
        }

        public static func jph() -> MediaType {
            .init(
                type: name,
                subtype: "jph",
                possibleExtensions: [
                    "jph"
                ],
                source: .iana
            )
        }

        public static func jphc() -> MediaType {
            .init(
                type: name,
                subtype: "jphc",
                possibleExtensions: [
                    "jhc"
                ],
                source: .iana
            )
        }

        public static func jpm() -> MediaType {
            .init(
                type: name,
                subtype: "jpm",
                possibleExtensions: [
                    "jpm",
                    "jpgm",
                ],
                source: .iana
            )
        }

        public static func jpx() -> MediaType {
            .init(
                type: name,
                subtype: "jpx",
                possibleExtensions: [
                    "jpx",
                    "jpf",
                ],
                source: .iana
            )
        }

        public static func jxl() -> MediaType {
            .init(
                type: name,
                subtype: "jxl",
                possibleExtensions: [
                    "jxl"
                ],
                source: .iana
            )
        }

        public static func jxr() -> MediaType {
            .init(
                type: name,
                subtype: "jxr",
                possibleExtensions: [
                    "jxr"
                ],
                source: .iana
            )
        }

        public static func jxra() -> MediaType {
            .init(
                type: name,
                subtype: "jxra",
                possibleExtensions: [
                    "jxra"
                ],
                source: .iana
            )
        }

        public static func jxrs() -> MediaType {
            .init(
                type: name,
                subtype: "jxrs",
                possibleExtensions: [
                    "jxrs"
                ],
                source: .iana
            )
        }

        public static func jxs() -> MediaType {
            .init(
                type: name,
                subtype: "jxs",
                possibleExtensions: [
                    "jxs"
                ],
                source: .iana
            )
        }

        public static func jxsc() -> MediaType {
            .init(
                type: name,
                subtype: "jxsc",
                possibleExtensions: [
                    "jxsc"
                ],
                source: .iana
            )
        }

        public static func jxsi() -> MediaType {
            .init(
                type: name,
                subtype: "jxsi",
                possibleExtensions: [
                    "jxsi"
                ],
                source: .iana
            )
        }

        public static func jxss() -> MediaType {
            .init(
                type: name,
                subtype: "jxss",
                possibleExtensions: [
                    "jxss"
                ],
                source: .iana
            )
        }

        public static func ktx() -> MediaType {
            .init(
                type: name,
                subtype: "ktx",
                possibleExtensions: [
                    "ktx"
                ],
                source: .iana
            )
        }

        public static func ktx2() -> MediaType {
            .init(
                type: name,
                subtype: "ktx2",
                possibleExtensions: [
                    "ktx2"
                ],
                source: .iana
            )
        }

        public static func naplps() -> MediaType {
            .init(
                type: name,
                subtype: "naplps",
                source: .iana
            )
        }

        public static func pjpeg() -> MediaType {
            .init(
                type: name,
                subtype: "pjpeg",
                possibleExtensions: [
                    "jfif"
                ]
            )
        }

        public static func png() -> MediaType {
            .init(
                type: name,
                subtype: "png",
                possibleExtensions: [
                    "png"
                ],
                source: .iana
            )
        }

        public static func prsBtif() -> MediaType {
            .init(
                type: name,
                subtype: "prs.btif",
                possibleExtensions: [
                    "btif",
                    "btf",
                ],
                source: .iana
            )
        }

        public static func prsPti() -> MediaType {
            .init(
                type: name,
                subtype: "prs.pti",
                possibleExtensions: [
                    "pti"
                ],
                source: .iana
            )
        }

        public static func pwgRaster() -> MediaType {
            .init(
                type: name,
                subtype: "pwg-raster",
                source: .iana
            )
        }

        public static func sgi() -> MediaType {
            .init(
                type: name,
                subtype: "sgi",
                possibleExtensions: [
                    "sgi"
                ],
                source: .apache
            )
        }

        public static func svgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "svg",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "svg",
                    "svgz",
                ],
                source: .iana
            )
        }

        public static func t38() -> MediaType {
            .init(
                type: name,
                subtype: "t38",
                possibleExtensions: [
                    "t38"
                ],
                source: .iana
            )
        }

        public static func tiff() -> MediaType {
            .init(
                type: name,
                subtype: "tiff",
                possibleExtensions: [
                    "tif",
                    "tiff",
                ],
                source: .iana
            )
        }

        public static func tiffFx() -> MediaType {
            .init(
                type: name,
                subtype: "tiff-fx",
                possibleExtensions: [
                    "tfx"
                ],
                source: .iana
            )
        }

        public static func vndAdobePhotoshop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.photoshop",
                possibleExtensions: [
                    "psd"
                ],
                source: .iana
            )
        }

        public static func vndAirzipAcceleratorAzv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.accelerator.azv",
                possibleExtensions: [
                    "azv"
                ],
                source: .iana
            )
        }

        public static func vndBlockfactFacti() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.facti",
                possibleExtensions: [
                    "facti"
                ],
                source: .iana
            )
        }

        public static func vndClip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.clip",
                source: .iana
            )
        }

        public static func vndCnsInf2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.inf2",
                source: .iana
            )
        }

        public static func vndDeceGraphic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.graphic",
                possibleExtensions: [
                    "uvi",
                    "uvvi",
                    "uvg",
                    "uvvg",
                ],
                source: .iana
            )
        }

        public static func vndDjvu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.djvu",
                possibleExtensions: [
                    "djvu",
                    "djv",
                ],
                source: .iana
            )
        }

        public static func vndDvbSubtitle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.subtitle",
                possibleExtensions: [
                    "sub"
                ],
                source: .iana
            )
        }

        public static func vndDwg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dwg",
                possibleExtensions: [
                    "dwg"
                ],
                source: .iana
            )
        }

        public static func vndDxf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dxf",
                possibleExtensions: [
                    "dxf"
                ],
                source: .iana
            )
        }

        public static func vndFastbidsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fastbidsheet",
                possibleExtensions: [
                    "fbs"
                ],
                source: .iana
            )
        }

        public static func vndFpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fpx",
                possibleExtensions: [
                    "fpx"
                ],
                source: .iana
            )
        }

        public static func vndFst() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fst",
                possibleExtensions: [
                    "fst"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxEdmicsMmr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.edmics-mmr",
                possibleExtensions: [
                    "mmr"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxEdmicsRlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.edmics-rlc",
                possibleExtensions: [
                    "rlc"
                ],
                source: .iana
            )
        }

        public static func vndGlobalgraphicsPgb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.globalgraphics.pgb",
                source: .iana
            )
        }

        public static func vndMicrosoftIcon() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.icon",
                possibleExtensions: [
                    "ico"
                ],
                source: .iana
            )
        }

        public static func vndMix() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mix",
                source: .iana
            )
        }

        public static func vndMozillaApng() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mozilla.apng",
                source: .iana
            )
        }

        public static func vndMsDds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-dds",
                possibleExtensions: [
                    "dds"
                ]
            )
        }

        public static func vndMsModi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-modi",
                possibleExtensions: [
                    "mdi"
                ],
                source: .iana
            )
        }

        public static func vndMsPhoto() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-photo",
                possibleExtensions: [
                    "wdp"
                ],
                source: .apache
            )
        }

        public static func vndNetFpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.net-fpx",
                possibleExtensions: [
                    "npx"
                ],
                source: .iana
            )
        }

        public static func vndPcoB16() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pco.b16",
                possibleExtensions: [
                    "b16"
                ],
                source: .iana
            )
        }

        public static func vndRadiance() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radiance",
                source: .iana
            )
        }

        public static func vndSealedPng() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.png",
                source: .iana
            )
        }

        public static func vndSealedmediaSoftsealGif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.gif",
                source: .iana
            )
        }

        public static func vndSealedmediaSoftsealJpg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.jpg",
                source: .iana
            )
        }

        public static func vndSvf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.svf",
                source: .iana
            )
        }

        public static func vndTencentTap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tencent.tap",
                possibleExtensions: [
                    "tap"
                ],
                source: .iana
            )
        }

        public static func vndValveSourceTexture() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.texture",
                possibleExtensions: [
                    "vtf"
                ],
                source: .iana
            )
        }

        public static func vndWapWbmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wbmp",
                possibleExtensions: [
                    "wbmp"
                ],
                source: .iana
            )
        }

        public static func vndXiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xiff",
                possibleExtensions: [
                    "xif"
                ],
                source: .iana
            )
        }

        public static func vndZbrushPcx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zbrush.pcx",
                possibleExtensions: [
                    "pcx"
                ],
                source: .iana
            )
        }

        public static func webp() -> MediaType {
            .init(
                type: name,
                subtype: "webp",
                possibleExtensions: [
                    "webp"
                ],
                source: .iana
            )
        }

        public static func wmf() -> MediaType {
            .init(
                type: name,
                subtype: "wmf",
                possibleExtensions: [
                    "wmf"
                ],
                source: .iana
            )
        }

        public static func x3ds() -> MediaType {
            .init(
                type: name,
                subtype: "x-3ds",
                possibleExtensions: [
                    "3ds"
                ],
                source: .apache
            )
        }

        public static func xAdobeDng() -> MediaType {
            .init(
                type: name,
                subtype: "x-adobe-dng",
                possibleExtensions: [
                    "dng"
                ]
            )
        }

        public static func xCmuRaster() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmu-raster",
                possibleExtensions: [
                    "ras"
                ],
                source: .apache
            )
        }

        public static func xCmx() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmx",
                possibleExtensions: [
                    "cmx"
                ],
                source: .apache
            )
        }

        public static func xEmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-emf",
                source: .iana
            )
        }

        public static func xFreehand() -> MediaType {
            .init(
                type: name,
                subtype: "x-freehand",
                possibleExtensions: [
                    "fh",
                    "fhc",
                    "fh4",
                    "fh5",
                    "fh7",
                ],
                source: .apache
            )
        }

        public static func xIcon() -> MediaType {
            .init(
                type: name,
                subtype: "x-icon",
                possibleExtensions: [
                    "ico"
                ],
                source: .apache
            )
        }

        public static func xJng() -> MediaType {
            .init(
                type: name,
                subtype: "x-jng",
                possibleExtensions: [
                    "jng"
                ],
                source: .nginx
            )
        }

        public static func xMrsidImage() -> MediaType {
            .init(
                type: name,
                subtype: "x-mrsid-image",
                possibleExtensions: [
                    "sid"
                ],
                source: .apache
            )
        }

        public static func xMsBmp() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-bmp",
                possibleExtensions: [
                    "bmp"
                ],
                source: .nginx
            )
        }

        public static func xPcx() -> MediaType {
            .init(
                type: name,
                subtype: "x-pcx",
                possibleExtensions: [
                    "pcx"
                ],
                source: .apache
            )
        }

        public static func xPict() -> MediaType {
            .init(
                type: name,
                subtype: "x-pict",
                possibleExtensions: [
                    "pic",
                    "pct",
                ],
                source: .apache
            )
        }

        public static func xPortableAnymap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-anymap",
                possibleExtensions: [
                    "pnm"
                ],
                source: .apache
            )
        }

        public static func xPortableBitmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-bitmap",
                possibleExtensions: [
                    "pbm"
                ],
                source: .apache
            )
        }

        public static func xPortableGraymap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-graymap",
                possibleExtensions: [
                    "pgm"
                ],
                source: .apache
            )
        }

        public static func xPortablePixmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-pixmap",
                possibleExtensions: [
                    "ppm"
                ],
                source: .apache
            )
        }

        public static func xRgb() -> MediaType {
            .init(
                type: name,
                subtype: "x-rgb",
                possibleExtensions: [
                    "rgb"
                ],
                source: .apache
            )
        }

        public static func xTga() -> MediaType {
            .init(
                type: name,
                subtype: "x-tga",
                possibleExtensions: [
                    "tga"
                ],
                source: .apache
            )
        }

        public static func xWmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-wmf",
                source: .iana
            )
        }

        public static func xXbitmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-xbitmap",
                possibleExtensions: [
                    "xbm"
                ],
                source: .apache
            )
        }

        public static func xXcf() -> MediaType {
            .init(
                type: name,
                subtype: "x-xcf"
            )
        }

        public static func xXpixmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-xpixmap",
                possibleExtensions: [
                    "xpm"
                ],
                source: .apache
            )
        }

        public static func xXwindowdump() -> MediaType {
            .init(
                type: name,
                subtype: "x-xwindowdump",
                possibleExtensions: [
                    "xwd"
                ],
                source: .apache
            )
        }

    }

}
