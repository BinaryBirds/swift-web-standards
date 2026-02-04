//
//  MediaType+Video.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Video {

        static let name: String = "video"

        public static var all: [MediaType] {
            [
                _1dInterleavedParityfec(),
                _3gpp(),
                _3gppTt(),
                _3gpp2(),
                av1(),
                bmpeg(),
                bt656(),
                celb(),
                dv(),
                encaprtp(),
                evc(),
                ffv1(),
                flexfec(),
                h261(),
                h263(),
                h2631998(),
                h2632000(),
                h264(),
                h264Rcdo(),
                h264Svc(),
                h265(),
                h266(),
                isoSegment(),
                jpeg(),
                jpeg2000(),
                jpeg2000Scl(),
                jpm(),
                jxsv(),
                lottieJson(),
                matroska(),
                matroska3d(),
                mj2(),
                mp1s(),
                mp2p(),
                mp2t(),
                mp4(),
                mp4vEs(),
                mpeg(),
                mpeg4Generic(),
                mpv(),
                nv(),
                ogg(),
                parityfec(),
                pointer(),
                quicktime(),
                raptorfec(),
                raw(),
                rtpEncAescm128(),
                rtploopback(),
                rtx(),
                scip(),
                smpte291(),
                smpte292m(),
                ulpfec(),
                vc1(),
                vc2(),
                vndBlockfactFactv(),
                vndCctv(),
                vndDeceHd(),
                vndDeceMobile(),
                vndDeceMp4(),
                vndDecePd(),
                vndDeceSd(),
                vndDeceVideo(),
                vndDirectvMpeg(),
                vndDirectvMpegTts(),
                vndDlnaMpegTts(),
                vndDvbFile(),
                vndFvt(),
                vndHnsVideo(),
                vndIptvforum1dparityfec1010(),
                vndIptvforum1dparityfec2005(),
                vndIptvforum2dparityfec1010(),
                vndIptvforum2dparityfec2005(),
                vndIptvforumTtsavc(),
                vndIptvforumTtsmpeg2(),
                vndMotorolaVideo(),
                vndMotorolaVideop(),
                vndMpegurl(),
                vndMsPlayreadyMediaPyv(),
                vndNokiaInterleavedMultimedia(),
                vndNokiaMp4vr(),
                vndNokiaVideovoip(),
                vndObjectvideo(),
                vndPlanar(),
                vndRadgamettoolsBink(),
                vndRadgamettoolsSmacker(),
                vndSealedMpeg1(),
                vndSealedMpeg4(),
                vndSealedSwf(),
                vndSealedmediaSoftsealMov(),
                vndUvvuMp4(),
                vndVivo(),
                vndYoutubeYt(),
                vp8(),
                vp9(),
                webm(),
                xF4v(),
                xFli(),
                xFlv(),
                xM4v(),
                xMatroska(),
                xMng(),
                xMsAsf(),
                xMsVob(),
                xMsWm(),
                xMsWmv(),
                xMsWmx(),
                xMsWvx(),
                xMsvideo(),
                xSgiMovie(),
                xSmv(),
            ]
        }

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec",
                source: .iana
            )
        }

        public static func _3gpp() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp",
                possibleExtensions: [
                    "3gp",
                    "3gpp",
                ],
                source: .iana
            )
        }

        public static func _3gppTt() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp-tt",
                source: .iana
            )
        }

        public static func _3gpp2() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp2",
                possibleExtensions: [
                    "3g2"
                ],
                source: .iana
            )
        }

        public static func av1() -> MediaType {
            .init(
                type: name,
                subtype: "av1",
                source: .iana
            )
        }

        public static func bmpeg() -> MediaType {
            .init(
                type: name,
                subtype: "bmpeg",
                source: .iana
            )
        }

        public static func bt656() -> MediaType {
            .init(
                type: name,
                subtype: "bt656",
                source: .iana
            )
        }

        public static func celb() -> MediaType {
            .init(
                type: name,
                subtype: "celb",
                source: .iana
            )
        }

        public static func dv() -> MediaType {
            .init(
                type: name,
                subtype: "dv",
                source: .iana
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp",
                source: .iana
            )
        }

        public static func evc() -> MediaType {
            .init(
                type: name,
                subtype: "evc",
                source: .iana
            )
        }

        public static func ffv1() -> MediaType {
            .init(
                type: name,
                subtype: "ffv1",
                source: .iana
            )
        }

        public static func flexfec() -> MediaType {
            .init(
                type: name,
                subtype: "flexfec",
                source: .iana
            )
        }

        public static func h261() -> MediaType {
            .init(
                type: name,
                subtype: "h261",
                possibleExtensions: [
                    "h261"
                ],
                source: .iana
            )
        }

        public static func h263() -> MediaType {
            .init(
                type: name,
                subtype: "h263",
                possibleExtensions: [
                    "h263"
                ],
                source: .iana
            )
        }

        public static func h2631998() -> MediaType {
            .init(
                type: name,
                subtype: "h263-1998",
                source: .iana
            )
        }

        public static func h2632000() -> MediaType {
            .init(
                type: name,
                subtype: "h263-2000",
                source: .iana
            )
        }

        public static func h264() -> MediaType {
            .init(
                type: name,
                subtype: "h264",
                possibleExtensions: [
                    "h264"
                ],
                source: .iana
            )
        }

        public static func h264Rcdo() -> MediaType {
            .init(
                type: name,
                subtype: "h264-rcdo",
                source: .iana
            )
        }

        public static func h264Svc() -> MediaType {
            .init(
                type: name,
                subtype: "h264-svc",
                source: .iana
            )
        }

        public static func h265() -> MediaType {
            .init(
                type: name,
                subtype: "h265",
                source: .iana
            )
        }

        public static func h266() -> MediaType {
            .init(
                type: name,
                subtype: "h266",
                source: .iana
            )
        }

        public static func isoSegment() -> MediaType {
            .init(
                type: name,
                subtype: "iso.segment",
                possibleExtensions: [
                    "m4s"
                ],
                source: .iana
            )
        }

        public static func jpeg() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg",
                possibleExtensions: [
                    "jpgv"
                ],
                source: .iana
            )
        }

        public static func jpeg2000() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg2000",
                source: .iana
            )
        }

        public static func jpeg2000Scl() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg2000-scl",
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
                source: .apache
            )
        }

        public static func jxsv() -> MediaType {
            .init(
                type: name,
                subtype: "jxsv",
                source: .iana
            )
        }

        public static func lottieJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lottie",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func matroska() -> MediaType {
            .init(
                type: name,
                subtype: "matroska",
                source: .iana
            )
        }

        public static func matroska3d() -> MediaType {
            .init(
                type: name,
                subtype: "matroska-3d",
                source: .iana
            )
        }

        public static func mj2() -> MediaType {
            .init(
                type: name,
                subtype: "mj2",
                possibleExtensions: [
                    "mj2",
                    "mjp2",
                ],
                source: .iana
            )
        }

        public static func mp1s() -> MediaType {
            .init(
                type: name,
                subtype: "mp1s",
                source: .iana
            )
        }

        public static func mp2p() -> MediaType {
            .init(
                type: name,
                subtype: "mp2p",
                source: .iana
            )
        }

        public static func mp2t() -> MediaType {
            .init(
                type: name,
                subtype: "mp2t",
                possibleExtensions: [
                    "ts",
                    "m2t",
                    "m2ts",
                    "mts",
                ],
                source: .iana
            )
        }

        public static func mp4() -> MediaType {
            .init(
                type: name,
                subtype: "mp4",
                possibleExtensions: [
                    "mp4",
                    "mp4v",
                    "mpg4",
                ],
                source: .iana
            )
        }

        public static func mp4vEs() -> MediaType {
            .init(
                type: name,
                subtype: "mp4v-es",
                source: .iana
            )
        }

        public static func mpeg() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg",
                possibleExtensions: [
                    "mpeg",
                    "mpg",
                    "mpe",
                    "m1v",
                    "m2v",
                ],
                source: .iana
            )
        }

        public static func mpeg4Generic() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-generic",
                source: .iana
            )
        }

        public static func mpv() -> MediaType {
            .init(
                type: name,
                subtype: "mpv",
                source: .iana
            )
        }

        public static func nv() -> MediaType {
            .init(
                type: name,
                subtype: "nv",
                source: .iana
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "ogv"
                ],
                source: .iana
            )
        }

        public static func parityfec() -> MediaType {
            .init(
                type: name,
                subtype: "parityfec",
                source: .iana
            )
        }

        public static func pointer() -> MediaType {
            .init(
                type: name,
                subtype: "pointer",
                source: .iana
            )
        }

        public static func quicktime() -> MediaType {
            .init(
                type: name,
                subtype: "quicktime",
                possibleExtensions: [
                    "qt",
                    "mov",
                ],
                source: .iana
            )
        }

        public static func raptorfec() -> MediaType {
            .init(
                type: name,
                subtype: "raptorfec",
                source: .iana
            )
        }

        public static func raw() -> MediaType {
            .init(
                type: name,
                subtype: "raw",
                source: .iana
            )
        }

        public static func rtpEncAescm128() -> MediaType {
            .init(
                type: name,
                subtype: "rtp-enc-aescm128",
                source: .iana
            )
        }

        public static func rtploopback() -> MediaType {
            .init(
                type: name,
                subtype: "rtploopback",
                source: .iana
            )
        }

        public static func rtx() -> MediaType {
            .init(
                type: name,
                subtype: "rtx",
                source: .iana
            )
        }

        public static func scip() -> MediaType {
            .init(
                type: name,
                subtype: "scip",
                source: .iana
            )
        }

        public static func smpte291() -> MediaType {
            .init(
                type: name,
                subtype: "smpte291",
                source: .iana
            )
        }

        public static func smpte292m() -> MediaType {
            .init(
                type: name,
                subtype: "smpte292m",
                source: .iana
            )
        }

        public static func ulpfec() -> MediaType {
            .init(
                type: name,
                subtype: "ulpfec",
                source: .iana
            )
        }

        public static func vc1() -> MediaType {
            .init(
                type: name,
                subtype: "vc1",
                source: .iana
            )
        }

        public static func vc2() -> MediaType {
            .init(
                type: name,
                subtype: "vc2",
                source: .iana
            )
        }

        public static func vndBlockfactFactv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.factv",
                source: .iana
            )
        }

        public static func vndCctv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cctv",
                source: .iana
            )
        }

        public static func vndDeceHd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.hd",
                possibleExtensions: [
                    "uvh",
                    "uvvh",
                ],
                source: .iana
            )
        }

        public static func vndDeceMobile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.mobile",
                possibleExtensions: [
                    "uvm",
                    "uvvm",
                ],
                source: .iana
            )
        }

        public static func vndDeceMp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.mp4",
                source: .iana
            )
        }

        public static func vndDecePd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.pd",
                possibleExtensions: [
                    "uvp",
                    "uvvp",
                ],
                source: .iana
            )
        }

        public static func vndDeceSd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.sd",
                possibleExtensions: [
                    "uvs",
                    "uvvs",
                ],
                source: .iana
            )
        }

        public static func vndDeceVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.video",
                possibleExtensions: [
                    "uvv",
                    "uvvv",
                ],
                source: .iana
            )
        }

        public static func vndDirectvMpeg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.directv.mpeg",
                source: .iana
            )
        }

        public static func vndDirectvMpegTts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.directv.mpeg-tts",
                source: .iana
            )
        }

        public static func vndDlnaMpegTts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dlna.mpeg-tts",
                source: .iana
            )
        }

        public static func vndDvbFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.file",
                possibleExtensions: [
                    "dvb"
                ],
                source: .iana
            )
        }

        public static func vndFvt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fvt",
                possibleExtensions: [
                    "fvt"
                ],
                source: .iana
            )
        }

        public static func vndHnsVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hns.video",
                source: .iana
            )
        }

        public static func vndIptvforum1dparityfec1010() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.1dparityfec-1010",
                source: .iana
            )
        }

        public static func vndIptvforum1dparityfec2005() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.1dparityfec-2005",
                source: .iana
            )
        }

        public static func vndIptvforum2dparityfec1010() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.2dparityfec-1010",
                source: .iana
            )
        }

        public static func vndIptvforum2dparityfec2005() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.2dparityfec-2005",
                source: .iana
            )
        }

        public static func vndIptvforumTtsavc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.ttsavc",
                source: .iana
            )
        }

        public static func vndIptvforumTtsmpeg2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.ttsmpeg2",
                source: .iana
            )
        }

        public static func vndMotorolaVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.video",
                source: .iana
            )
        }

        public static func vndMotorolaVideop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.videop",
                source: .iana
            )
        }

        public static func vndMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mpegurl",
                possibleExtensions: [
                    "mxu",
                    "m4u",
                ],
                source: .iana
            )
        }

        public static func vndMsPlayreadyMediaPyv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-playready.media.pyv",
                possibleExtensions: [
                    "pyv"
                ],
                source: .iana
            )
        }

        public static func vndNokiaInterleavedMultimedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.interleaved-multimedia",
                source: .iana
            )
        }

        public static func vndNokiaMp4vr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.mp4vr",
                source: .iana
            )
        }

        public static func vndNokiaVideovoip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.videovoip",
                source: .iana
            )
        }

        public static func vndObjectvideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.objectvideo",
                source: .iana
            )
        }

        public static func vndPlanar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.planar",
                source: .iana
            )
        }

        public static func vndRadgamettoolsBink() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radgamettools.bink",
                source: .iana
            )
        }

        public static func vndRadgamettoolsSmacker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radgamettools.smacker",
                source: .apache
            )
        }

        public static func vndSealedMpeg1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mpeg1",
                source: .iana
            )
        }

        public static func vndSealedMpeg4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mpeg4",
                source: .iana
            )
        }

        public static func vndSealedSwf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.swf",
                source: .iana
            )
        }

        public static func vndSealedmediaSoftsealMov() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.mov",
                source: .iana
            )
        }

        public static func vndUvvuMp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uvvu.mp4",
                possibleExtensions: [
                    "uvu",
                    "uvvu",
                ],
                source: .iana
            )
        }

        public static func vndVivo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vivo",
                possibleExtensions: [
                    "viv"
                ],
                source: .iana
            )
        }

        public static func vndYoutubeYt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.youtube.yt",
                source: .iana
            )
        }

        public static func vp8() -> MediaType {
            .init(
                type: name,
                subtype: "vp8",
                source: .iana
            )
        }

        public static func vp9() -> MediaType {
            .init(
                type: name,
                subtype: "vp9",
                source: .iana
            )
        }

        public static func webm() -> MediaType {
            .init(
                type: name,
                subtype: "webm",
                possibleExtensions: [
                    "webm"
                ],
                source: .apache
            )
        }

        public static func xF4v() -> MediaType {
            .init(
                type: name,
                subtype: "x-f4v",
                possibleExtensions: [
                    "f4v"
                ],
                source: .apache
            )
        }

        public static func xFli() -> MediaType {
            .init(
                type: name,
                subtype: "x-fli",
                possibleExtensions: [
                    "fli"
                ],
                source: .apache
            )
        }

        public static func xFlv() -> MediaType {
            .init(
                type: name,
                subtype: "x-flv",
                possibleExtensions: [
                    "flv"
                ],
                source: .apache
            )
        }

        public static func xM4v() -> MediaType {
            .init(
                type: name,
                subtype: "x-m4v",
                possibleExtensions: [
                    "m4v"
                ],
                source: .apache
            )
        }

        public static func xMatroska() -> MediaType {
            .init(
                type: name,
                subtype: "x-matroska",
                possibleExtensions: [
                    "mkv",
                    "mk3d",
                    "mks",
                ],
                source: .apache
            )
        }

        public static func xMng() -> MediaType {
            .init(
                type: name,
                subtype: "x-mng",
                possibleExtensions: [
                    "mng"
                ],
                source: .apache
            )
        }

        public static func xMsAsf() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-asf",
                possibleExtensions: [
                    "asf",
                    "asx",
                ],
                source: .apache
            )
        }

        public static func xMsVob() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-vob",
                possibleExtensions: [
                    "vob"
                ],
                source: .apache
            )
        }

        public static func xMsWm() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wm",
                possibleExtensions: [
                    "wm"
                ],
                source: .apache
            )
        }

        public static func xMsWmv() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmv",
                possibleExtensions: [
                    "wmv"
                ],
                source: .apache
            )
        }

        public static func xMsWmx() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmx",
                possibleExtensions: [
                    "wmx"
                ],
                source: .apache
            )
        }

        public static func xMsWvx() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wvx",
                possibleExtensions: [
                    "wvx"
                ],
                source: .apache
            )
        }

        public static func xMsvideo() -> MediaType {
            .init(
                type: name,
                subtype: "x-msvideo",
                possibleExtensions: [
                    "avi"
                ],
                source: .apache
            )
        }

        public static func xSgiMovie() -> MediaType {
            .init(
                type: name,
                subtype: "x-sgi-movie",
                possibleExtensions: [
                    "movie"
                ],
                source: .apache
            )
        }

        public static func xSmv() -> MediaType {
            .init(
                type: name,
                subtype: "x-smv",
                possibleExtensions: [
                    "smv"
                ],
                source: .apache
            )
        }

    }

}
