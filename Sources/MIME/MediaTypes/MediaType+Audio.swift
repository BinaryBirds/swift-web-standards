extension MediaType {

    public enum Audio {

        static let name: String = "audio"

        public static var all: [MediaType] {
            [
                _1dInterleavedParityfec(),
                _32kadpcm(),
                _3gpp(),
                _3gpp2(),
                aac(),
                ac3(),
                adpcm(),
                amr(),
                amrWb(),
                amrWbPlus(),
                aptx(),
                asc(),
                atracAdvancedLossless(),
                atracX(),
                atrac3(),
                basic(),
                bv16(),
                bv32(),
                clearmode(),
                cn(),
                dat12(),
                dls(),
                dsrEs201108(),
                dsrEs202050(),
                dsrEs202211(),
                dsrEs202212(),
                dv(),
                dvi4(),
                eac3(),
                encaprtp(),
                evrc(),
                evrcQcp(),
                evrc0(),
                evrc1(),
                evrcb(),
                evrcb0(),
                evrcb1(),
                evrcnw(),
                evrcnw0(),
                evrcnw1(),
                evrcwb(),
                evrcwb0(),
                evrcwb1(),
                evs(),
                flac(),
                flexfec(),
                fwdred(),
                g7110(),
                g719(),
                g722(),
                g7221(),
                g723(),
                g72616(),
                g72624(),
                g72632(),
                g72640(),
                g728(),
                g729(),
                g7291(),
                g729d(),
                g729e(),
                gsm(),
                gsmEfr(),
                gsmHr08(),
                ilbc(),
                ipMrV25(),
                isac(),
                l16(),
                l20(),
                l24(),
                l8(),
                lpc(),
                matroska(),
                melp(),
                melp1200(),
                melp2400(),
                melp600(),
                mhas(),
                midi(),
                midiClip(),
                mobileXmf(),
                mp3(),
                mp4(),
                mp4aLatm(),
                mpa(),
                mpaRobust(),
                mpeg(),
                mpeg4Generic(),
                musepack(),
                ogg(),
                opus(),
                parityfec(),
                pcma(),
                pcmaWb(),
                pcmu(),
                pcmuWb(),
                prsSid(),
                qcelp(),
                raptorfec(),
                red(),
                rtpEncAescm128(),
                rtpMidi(),
                rtploopback(),
                rtx(),
                s3m(),
                scip(),
                silk(),
                smv(),
                smvQcp(),
                smv0(),
                sofa(),
                spMidi(),
                speex(),
                t140c(),
                t38(),
                telephoneEvent(),
                tetraAcelp(),
                tetraAcelpBb(),
                tone(),
                tsvcis(),
                uemclip(),
                ulpfec(),
                usac(),
                vdvi(),
                vmrWb(),
                vnd3gppIufp(),
                vnd4sb(),
                vndAudiokoz(),
                vndBlockfactFacta(),
                vndCelp(),
                vndCiscoNse(),
                vndCmlesRadioEvents(),
                vndCnsAnp1(),
                vndCnsInf1(),
                vndDeceAudio(),
                vndDigitalWinds(),
                vndDlnaAdts(),
                vndDolbyHeaac1(),
                vndDolbyHeaac2(),
                vndDolbyMlp(),
                vndDolbyMps(),
                vndDolbyPl2(),
                vndDolbyPl2x(),
                vndDolbyPl2z(),
                vndDolbyPulse1(),
                vndDra(),
                vndDts(),
                vndDtsHd(),
                vndDtsUhd(),
                vndDvbFile(),
                vndEveradPlj(),
                vndHnsAudio(),
                vndLucentVoice(),
                vndMsPlayreadyMediaPya(),
                vndNokiaMobileXmf(),
                vndNortelVbk(),
                vndNueraEcelp4800(),
                vndNueraEcelp7470(),
                vndNueraEcelp9600(),
                vndOctelSbc(),
                vndPresonusMultitrack(),
                vndQcelp(),
                vndRhetorex32kadpcm(),
                vndRip(),
                vndRnRealaudio(),
                vndSealedmediaSoftsealMpeg(),
                vndVmxCvsd(),
                vndWave(),
                vorbis(),
                vorbisConfig(),
                wav(),
                wave(),
                webm(),
                xAac(),
                xAiff(),
                xCaf(),
                xFlac(),
                xM4a(),
                xMatroska(),
                xMpegurl(),
                xMsWax(),
                xMsWma(),
                xPnRealaudio(),
                xPnRealaudioPlugin(),
                xRealaudio(),
                xTta(),
                xWav(),
                xm(),
            ]
        }

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec",
                source: .iana
            )
        }

        public static func _32kadpcm() -> MediaType {
            .init(
                type: name,
                subtype: "32kadpcm",
                source: .iana
            )
        }

        public static func _3gpp() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp",
                possibleExtensions: [
                    "3gpp"
                ],
                source: .iana
            )
        }

        public static func _3gpp2() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp2",
                source: .iana
            )
        }

        public static func aac() -> MediaType {
            .init(
                type: name,
                subtype: "aac",
                possibleExtensions: [
                    "adts",
                    "aac",
                ],
                source: .iana
            )
        }

        public static func ac3() -> MediaType {
            .init(
                type: name,
                subtype: "ac3",
                source: .iana
            )
        }

        public static func adpcm() -> MediaType {
            .init(
                type: name,
                subtype: "adpcm",
                possibleExtensions: [
                    "adp"
                ],
                source: .apache
            )
        }

        public static func amr() -> MediaType {
            .init(
                type: name,
                subtype: "amr",
                possibleExtensions: [
                    "amr"
                ],
                source: .iana
            )
        }

        public static func amrWb() -> MediaType {
            .init(
                type: name,
                subtype: "amr-wb",
                source: .iana
            )
        }

        public static func amrWbPlus() -> MediaType {
            .init(
                type: name,
                subtype: "amr-wb+",
                source: .iana
            )
        }

        public static func aptx() -> MediaType {
            .init(
                type: name,
                subtype: "aptx",
                source: .iana
            )
        }

        public static func asc() -> MediaType {
            .init(
                type: name,
                subtype: "asc",
                source: .iana
            )
        }

        public static func atracAdvancedLossless() -> MediaType {
            .init(
                type: name,
                subtype: "atrac-advanced-lossless",
                source: .iana
            )
        }

        public static func atracX() -> MediaType {
            .init(
                type: name,
                subtype: "atrac-x",
                source: .iana
            )
        }

        public static func atrac3() -> MediaType {
            .init(
                type: name,
                subtype: "atrac3",
                source: .iana
            )
        }

        public static func basic() -> MediaType {
            .init(
                type: name,
                subtype: "basic",
                possibleExtensions: [
                    "au",
                    "snd",
                ],
                source: .iana
            )
        }

        public static func bv16() -> MediaType {
            .init(
                type: name,
                subtype: "bv16",
                source: .iana
            )
        }

        public static func bv32() -> MediaType {
            .init(
                type: name,
                subtype: "bv32",
                source: .iana
            )
        }

        public static func clearmode() -> MediaType {
            .init(
                type: name,
                subtype: "clearmode",
                source: .iana
            )
        }

        public static func cn() -> MediaType {
            .init(
                type: name,
                subtype: "cn",
                source: .iana
            )
        }

        public static func dat12() -> MediaType {
            .init(
                type: name,
                subtype: "dat12",
                source: .iana
            )
        }

        public static func dls() -> MediaType {
            .init(
                type: name,
                subtype: "dls",
                source: .iana
            )
        }

        public static func dsrEs201108() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es201108",
                source: .iana
            )
        }

        public static func dsrEs202050() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202050",
                source: .iana
            )
        }

        public static func dsrEs202211() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202211",
                source: .iana
            )
        }

        public static func dsrEs202212() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202212",
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

        public static func dvi4() -> MediaType {
            .init(
                type: name,
                subtype: "dvi4",
                source: .iana
            )
        }

        public static func eac3() -> MediaType {
            .init(
                type: name,
                subtype: "eac3",
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

        public static func evrc() -> MediaType {
            .init(
                type: name,
                subtype: "evrc",
                source: .iana
            )
        }

        public static func evrcQcp() -> MediaType {
            .init(
                type: name,
                subtype: "evrc-qcp",
                source: .iana
            )
        }

        public static func evrc0() -> MediaType {
            .init(
                type: name,
                subtype: "evrc0",
                source: .iana
            )
        }

        public static func evrc1() -> MediaType {
            .init(
                type: name,
                subtype: "evrc1",
                source: .iana
            )
        }

        public static func evrcb() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb",
                source: .iana
            )
        }

        public static func evrcb0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb0",
                source: .iana
            )
        }

        public static func evrcb1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb1",
                source: .iana
            )
        }

        public static func evrcnw() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw",
                source: .iana
            )
        }

        public static func evrcnw0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw0",
                source: .iana
            )
        }

        public static func evrcnw1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw1",
                source: .iana
            )
        }

        public static func evrcwb() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb",
                source: .iana
            )
        }

        public static func evrcwb0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb0",
                source: .iana
            )
        }

        public static func evrcwb1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb1",
                source: .iana
            )
        }

        public static func evs() -> MediaType {
            .init(
                type: name,
                subtype: "evs",
                source: .iana
            )
        }

        public static func flac() -> MediaType {
            .init(
                type: name,
                subtype: "flac",
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

        public static func fwdred() -> MediaType {
            .init(
                type: name,
                subtype: "fwdred",
                source: .iana
            )
        }

        public static func g7110() -> MediaType {
            .init(
                type: name,
                subtype: "g711-0",
                source: .iana
            )
        }

        public static func g719() -> MediaType {
            .init(
                type: name,
                subtype: "g719",
                source: .iana
            )
        }

        public static func g722() -> MediaType {
            .init(
                type: name,
                subtype: "g722",
                source: .iana
            )
        }

        public static func g7221() -> MediaType {
            .init(
                type: name,
                subtype: "g7221",
                source: .iana
            )
        }

        public static func g723() -> MediaType {
            .init(
                type: name,
                subtype: "g723",
                source: .iana
            )
        }

        public static func g72616() -> MediaType {
            .init(
                type: name,
                subtype: "g726-16",
                source: .iana
            )
        }

        public static func g72624() -> MediaType {
            .init(
                type: name,
                subtype: "g726-24",
                source: .iana
            )
        }

        public static func g72632() -> MediaType {
            .init(
                type: name,
                subtype: "g726-32",
                source: .iana
            )
        }

        public static func g72640() -> MediaType {
            .init(
                type: name,
                subtype: "g726-40",
                source: .iana
            )
        }

        public static func g728() -> MediaType {
            .init(
                type: name,
                subtype: "g728",
                source: .iana
            )
        }

        public static func g729() -> MediaType {
            .init(
                type: name,
                subtype: "g729",
                source: .iana
            )
        }

        public static func g7291() -> MediaType {
            .init(
                type: name,
                subtype: "g7291",
                source: .iana
            )
        }

        public static func g729d() -> MediaType {
            .init(
                type: name,
                subtype: "g729d",
                source: .iana
            )
        }

        public static func g729e() -> MediaType {
            .init(
                type: name,
                subtype: "g729e",
                source: .iana
            )
        }

        public static func gsm() -> MediaType {
            .init(
                type: name,
                subtype: "gsm",
                source: .iana
            )
        }

        public static func gsmEfr() -> MediaType {
            .init(
                type: name,
                subtype: "gsm-efr",
                source: .iana
            )
        }

        public static func gsmHr08() -> MediaType {
            .init(
                type: name,
                subtype: "gsm-hr-08",
                source: .iana
            )
        }

        public static func ilbc() -> MediaType {
            .init(
                type: name,
                subtype: "ilbc",
                source: .iana
            )
        }

        public static func ipMrV25() -> MediaType {
            .init(
                type: name,
                subtype: "ip-mr_v2.5",
                source: .iana
            )
        }

        public static func isac() -> MediaType {
            .init(
                type: name,
                subtype: "isac",
                source: .apache
            )
        }

        public static func l16() -> MediaType {
            .init(
                type: name,
                subtype: "l16",
                source: .iana
            )
        }

        public static func l20() -> MediaType {
            .init(
                type: name,
                subtype: "l20",
                source: .iana
            )
        }

        public static func l24() -> MediaType {
            .init(
                type: name,
                subtype: "l24",
                source: .iana
            )
        }

        public static func l8() -> MediaType {
            .init(
                type: name,
                subtype: "l8",
                source: .iana
            )
        }

        public static func lpc() -> MediaType {
            .init(
                type: name,
                subtype: "lpc",
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

        public static func melp() -> MediaType {
            .init(
                type: name,
                subtype: "melp",
                source: .iana
            )
        }

        public static func melp1200() -> MediaType {
            .init(
                type: name,
                subtype: "melp1200",
                source: .iana
            )
        }

        public static func melp2400() -> MediaType {
            .init(
                type: name,
                subtype: "melp2400",
                source: .iana
            )
        }

        public static func melp600() -> MediaType {
            .init(
                type: name,
                subtype: "melp600",
                source: .iana
            )
        }

        public static func mhas() -> MediaType {
            .init(
                type: name,
                subtype: "mhas",
                source: .iana
            )
        }

        public static func midi() -> MediaType {
            .init(
                type: name,
                subtype: "midi",
                possibleExtensions: [
                    "mid",
                    "midi",
                    "kar",
                    "rmi",
                ],
                source: .apache
            )
        }

        public static func midiClip() -> MediaType {
            .init(
                type: name,
                subtype: "midi-clip",
                source: .iana
            )
        }

        public static func mobileXmf() -> MediaType {
            .init(
                type: name,
                subtype: "mobile-xmf",
                possibleExtensions: [
                    "mxmf"
                ],
                source: .iana
            )
        }

        public static func mp3() -> MediaType {
            .init(
                type: name,
                subtype: "mp3",
                possibleExtensions: [
                    "mp3"
                ]
            )
        }

        public static func mp4() -> MediaType {
            .init(
                type: name,
                subtype: "mp4",
                possibleExtensions: [
                    "m4a",
                    "mp4a",
                    "m4b",
                ],
                source: .iana
            )
        }

        public static func mp4aLatm() -> MediaType {
            .init(
                type: name,
                subtype: "mp4a-latm",
                source: .iana
            )
        }

        public static func mpa() -> MediaType {
            .init(
                type: name,
                subtype: "mpa",
                source: .iana
            )
        }

        public static func mpaRobust() -> MediaType {
            .init(
                type: name,
                subtype: "mpa-robust",
                source: .iana
            )
        }

        public static func mpeg() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg",
                possibleExtensions: [
                    "mpga",
                    "mp2",
                    "mp2a",
                    "mp3",
                    "m2a",
                    "m3a",
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

        public static func musepack() -> MediaType {
            .init(
                type: name,
                subtype: "musepack",
                source: .apache
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "oga",
                    "ogg",
                    "spx",
                    "opus",
                ],
                source: .iana
            )
        }

        public static func opus() -> MediaType {
            .init(
                type: name,
                subtype: "opus",
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

        public static func pcma() -> MediaType {
            .init(
                type: name,
                subtype: "pcma",
                source: .iana
            )
        }

        public static func pcmaWb() -> MediaType {
            .init(
                type: name,
                subtype: "pcma-wb",
                source: .iana
            )
        }

        public static func pcmu() -> MediaType {
            .init(
                type: name,
                subtype: "pcmu",
                source: .iana
            )
        }

        public static func pcmuWb() -> MediaType {
            .init(
                type: name,
                subtype: "pcmu-wb",
                source: .iana
            )
        }

        public static func prsSid() -> MediaType {
            .init(
                type: name,
                subtype: "prs.sid",
                source: .iana
            )
        }

        public static func qcelp() -> MediaType {
            .init(
                type: name,
                subtype: "qcelp",
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

        public static func red() -> MediaType {
            .init(
                type: name,
                subtype: "red",
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

        public static func rtpMidi() -> MediaType {
            .init(
                type: name,
                subtype: "rtp-midi",
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

        public static func s3m() -> MediaType {
            .init(
                type: name,
                subtype: "s3m",
                possibleExtensions: [
                    "s3m"
                ],
                source: .apache
            )
        }

        public static func scip() -> MediaType {
            .init(
                type: name,
                subtype: "scip",
                source: .iana
            )
        }

        public static func silk() -> MediaType {
            .init(
                type: name,
                subtype: "silk",
                possibleExtensions: [
                    "sil"
                ],
                source: .apache
            )
        }

        public static func smv() -> MediaType {
            .init(
                type: name,
                subtype: "smv",
                source: .iana
            )
        }

        public static func smvQcp() -> MediaType {
            .init(
                type: name,
                subtype: "smv-qcp",
                source: .iana
            )
        }

        public static func smv0() -> MediaType {
            .init(
                type: name,
                subtype: "smv0",
                source: .iana
            )
        }

        public static func sofa() -> MediaType {
            .init(
                type: name,
                subtype: "sofa",
                source: .iana
            )
        }

        public static func spMidi() -> MediaType {
            .init(
                type: name,
                subtype: "sp-midi",
                source: .iana
            )
        }

        public static func speex() -> MediaType {
            .init(
                type: name,
                subtype: "speex",
                source: .iana
            )
        }

        public static func t140c() -> MediaType {
            .init(
                type: name,
                subtype: "t140c",
                source: .iana
            )
        }

        public static func t38() -> MediaType {
            .init(
                type: name,
                subtype: "t38",
                source: .iana
            )
        }

        public static func telephoneEvent() -> MediaType {
            .init(
                type: name,
                subtype: "telephone-event",
                source: .iana
            )
        }

        public static func tetraAcelp() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_acelp",
                source: .iana
            )
        }

        public static func tetraAcelpBb() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_acelp_bb",
                source: .iana
            )
        }

        public static func tone() -> MediaType {
            .init(
                type: name,
                subtype: "tone",
                source: .iana
            )
        }

        public static func tsvcis() -> MediaType {
            .init(
                type: name,
                subtype: "tsvcis",
                source: .iana
            )
        }

        public static func uemclip() -> MediaType {
            .init(
                type: name,
                subtype: "uemclip",
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

        public static func usac() -> MediaType {
            .init(
                type: name,
                subtype: "usac",
                source: .iana
            )
        }

        public static func vdvi() -> MediaType {
            .init(
                type: name,
                subtype: "vdvi",
                source: .iana
            )
        }

        public static func vmrWb() -> MediaType {
            .init(
                type: name,
                subtype: "vmr-wb",
                source: .iana
            )
        }

        public static func vnd3gppIufp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.iufp",
                source: .iana
            )
        }

        public static func vnd4sb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.4sb",
                source: .iana
            )
        }

        public static func vndAudiokoz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.audiokoz",
                source: .iana
            )
        }

        public static func vndBlockfactFacta() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.facta",
                source: .iana
            )
        }

        public static func vndCelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.celp",
                source: .iana
            )
        }

        public static func vndCiscoNse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cisco.nse",
                source: .iana
            )
        }

        public static func vndCmlesRadioEvents() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cmles.radio-events",
                source: .iana
            )
        }

        public static func vndCnsAnp1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.anp1",
                source: .iana
            )
        }

        public static func vndCnsInf1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.inf1",
                source: .iana
            )
        }

        public static func vndDeceAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.audio",
                possibleExtensions: [
                    "uva",
                    "uvva",
                ],
                source: .iana
            )
        }

        public static func vndDigitalWinds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.digital-winds",
                possibleExtensions: [
                    "eol"
                ],
                source: .iana
            )
        }

        public static func vndDlnaAdts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dlna.adts",
                source: .iana
            )
        }

        public static func vndDolbyHeaac1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.heaac.1",
                source: .iana
            )
        }

        public static func vndDolbyHeaac2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.heaac.2",
                source: .iana
            )
        }

        public static func vndDolbyMlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mlp",
                source: .iana
            )
        }

        public static func vndDolbyMps() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mps",
                source: .iana
            )
        }

        public static func vndDolbyPl2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2",
                source: .iana
            )
        }

        public static func vndDolbyPl2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2x",
                source: .iana
            )
        }

        public static func vndDolbyPl2z() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2z",
                source: .iana
            )
        }

        public static func vndDolbyPulse1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pulse.1",
                source: .iana
            )
        }

        public static func vndDra() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dra",
                possibleExtensions: [
                    "dra"
                ],
                source: .iana
            )
        }

        public static func vndDts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts",
                possibleExtensions: [
                    "dts"
                ],
                source: .iana
            )
        }

        public static func vndDtsHd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts.hd",
                possibleExtensions: [
                    "dtshd"
                ],
                source: .iana
            )
        }

        public static func vndDtsUhd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts.uhd",
                source: .iana
            )
        }

        public static func vndDvbFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.file",
                source: .iana
            )
        }

        public static func vndEveradPlj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.everad.plj",
                source: .iana
            )
        }

        public static func vndHnsAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hns.audio",
                source: .iana
            )
        }

        public static func vndLucentVoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lucent.voice",
                possibleExtensions: [
                    "lvp"
                ],
                source: .iana
            )
        }

        public static func vndMsPlayreadyMediaPya() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-playready.media.pya",
                possibleExtensions: [
                    "pya"
                ],
                source: .iana
            )
        }

        public static func vndNokiaMobileXmf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.mobile-xmf",
                source: .iana
            )
        }

        public static func vndNortelVbk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nortel.vbk",
                source: .iana
            )
        }

        public static func vndNueraEcelp4800() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp4800",
                possibleExtensions: [
                    "ecelp4800"
                ],
                source: .iana
            )
        }

        public static func vndNueraEcelp7470() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp7470",
                possibleExtensions: [
                    "ecelp7470"
                ],
                source: .iana
            )
        }

        public static func vndNueraEcelp9600() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp9600",
                possibleExtensions: [
                    "ecelp9600"
                ],
                source: .iana
            )
        }

        public static func vndOctelSbc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.octel.sbc",
                source: .iana
            )
        }

        public static func vndPresonusMultitrack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.presonus.multitrack",
                source: .iana
            )
        }

        public static func vndQcelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.qcelp",
                source: .apache
            )
        }

        public static func vndRhetorex32kadpcm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rhetorex.32kadpcm",
                source: .iana
            )
        }

        public static func vndRip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rip",
                possibleExtensions: [
                    "rip"
                ],
                source: .iana
            )
        }

        public static func vndRnRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realaudio"
            )
        }

        public static func vndSealedmediaSoftsealMpeg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.mpeg",
                source: .iana
            )
        }

        public static func vndVmxCvsd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vmx.cvsd",
                source: .iana
            )
        }

        public static func vndWave() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wave"
            )
        }

        public static func vorbis() -> MediaType {
            .init(
                type: name,
                subtype: "vorbis",
                source: .iana
            )
        }

        public static func vorbisConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vorbis-config",
                source: .iana
            )
        }

        public static func wav() -> MediaType {
            .init(
                type: name,
                subtype: "wav",
                possibleExtensions: [
                    "wav"
                ]
            )
        }

        public static func wave() -> MediaType {
            .init(
                type: name,
                subtype: "wave",
                possibleExtensions: [
                    "wav"
                ]
            )
        }

        public static func webm() -> MediaType {
            .init(
                type: name,
                subtype: "webm",
                possibleExtensions: [
                    "weba"
                ],
                source: .apache
            )
        }

        public static func xAac() -> MediaType {
            .init(
                type: name,
                subtype: "x-aac",
                possibleExtensions: [
                    "aac"
                ],
                source: .apache
            )
        }

        public static func xAiff() -> MediaType {
            .init(
                type: name,
                subtype: "x-aiff",
                possibleExtensions: [
                    "aif",
                    "aiff",
                    "aifc",
                ],
                source: .apache
            )
        }

        public static func xCaf() -> MediaType {
            .init(
                type: name,
                subtype: "x-caf",
                possibleExtensions: [
                    "caf"
                ],
                source: .apache
            )
        }

        public static func xFlac() -> MediaType {
            .init(
                type: name,
                subtype: "x-flac",
                possibleExtensions: [
                    "flac"
                ],
                source: .apache
            )
        }

        public static func xM4a() -> MediaType {
            .init(
                type: name,
                subtype: "x-m4a",
                possibleExtensions: [
                    "m4a"
                ],
                source: .nginx
            )
        }

        public static func xMatroska() -> MediaType {
            .init(
                type: name,
                subtype: "x-matroska",
                possibleExtensions: [
                    "mka"
                ],
                source: .apache
            )
        }

        public static func xMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "x-mpegurl",
                possibleExtensions: [
                    "m3u"
                ],
                source: .apache
            )
        }

        public static func xMsWax() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wax",
                possibleExtensions: [
                    "wax"
                ],
                source: .apache
            )
        }

        public static func xMsWma() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wma",
                possibleExtensions: [
                    "wma"
                ],
                source: .apache
            )
        }

        public static func xPnRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "x-pn-realaudio",
                possibleExtensions: [
                    "ram",
                    "ra",
                ],
                source: .apache
            )
        }

        public static func xPnRealaudioPlugin() -> MediaType {
            .init(
                type: name,
                subtype: "x-pn-realaudio-plugin",
                possibleExtensions: [
                    "rmp"
                ],
                source: .apache
            )
        }

        public static func xRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "x-realaudio",
                possibleExtensions: [
                    "ra"
                ],
                source: .nginx
            )
        }

        public static func xTta() -> MediaType {
            .init(
                type: name,
                subtype: "x-tta",
                source: .apache
            )
        }

        public static func xWav() -> MediaType {
            .init(
                type: name,
                subtype: "x-wav",
                possibleExtensions: [
                    "wav"
                ],
                source: .apache
            )
        }

        public static func xm() -> MediaType {
            .init(
                type: name,
                subtype: "xm",
                possibleExtensions: [
                    "xm"
                ],
                source: .apache
            )
        }

    }

}
