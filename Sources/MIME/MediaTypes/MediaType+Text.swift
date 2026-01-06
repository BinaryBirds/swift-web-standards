extension MediaType {

    public enum Text {

        static let name: String = "text"

        public static var all: [MediaType] {
            [
                _1dInterleavedParityfec(),
                cacheManifest(),
                calendar(),
                cmd(),
                coffeescript(),
                cql(),
                cqlExpression(),
                cqlIdentifier(),
                css(),
                csv(),
                csvSchema(),
                directory(),
                dns(),
                ecmascript(),
                encaprtp(),
                enriched(),
                fhirpath(),
                flexfec(),
                fwdred(),
                gff3(),
                grammarRefList(),
                hl7v2(),
                html(),
                jade(),
                javascript(),
                jcrCnd(),
                jsx(),
                less(),
                markdown(),
                mathml(),
                mdx(),
                mizar(),
                n3(),
                org(),
                parameters(),
                parityfec(),
                plain(),
                provenanceNotation(),
                prsFallensteinRst(),
                prsLinesTag(),
                prsPropLogic(),
                prsTexi(),
                raptorfec(),
                red(),
                rfc822Headers(),
                richtext(),
                rtf(),
                rtpEncAescm128(),
                rtploopback(),
                rtx(),
                sgml(),
                shaclc(),
                shex(),
                slim(),
                spdx(),
                strings(),
                stylus(),
                t140(),
                tabSeparatedValues(),
                troff(),
                turtle(),
                ulpfec(),
                uriList(),
                vcard(),
                vndA(),
                vndAbc(),
                vndAsciiArt(),
                vndCurl(),
                vndCurlDcurl(),
                vndCurlMcurl(),
                vndCurlScurl(),
                vndDebianCopyright(),
                vndDmclientscript(),
                vndDvbSubtitle(),
                vndEsmertecThemeDescriptor(),
                vndExchangeable(),
                vndFamilysearchGedcom(),
                vndFiclabFlt(),
                vndFly(),
                vndFmiFlexstor(),
                vndGml(),
                vndGraphviz(),
                vndHans(),
                vndHgl(),
                vndIn3d3dml(),
                vndIn3dSpot(),
                vndIptcNewsml(),
                vndIptcNitf(),
                vndLatexZ(),
                vndMotorolaReflex(),
                vndMsMediapackage(),
                vndNet2phoneCommcenterCommand(),
                vndRadisysMsmlBasicLayout(),
                vndSenxWarpscript(),
                vndSiUricatalogue(),
                vndSosi(),
                vndSunJ2meAppDescriptor(),
                vndTrolltechLinguist(),
                vndTypst(),
                vndVcf(),
                vndWapSi(),
                vndWapSl(),
                vndWapWml(),
                vndWapWmlscript(),
                vndZooKcl(),
                vtt(),
                wgsl(),
                xAsm(),
                xC(),
                xComponent(),
                xFortran(),
                xGwtRpc(),
                xHandlebarsTemplate(),
                xJavaSource(),
                xJqueryTmpl(),
                xLua(),
                xMarkdown(),
                xNfo(),
                xOpml(),
                xOrg(),
                xPascal(),
                xProcessing(),
                xSass(),
                xScss(),
                xSetext(),
                xSfv(),
                xSuseYmp(),
                xUuencode(),
                xVcalendar(),
                xVcard(),
                xml(),
                xmlExternalParsedEntity(),
                yaml(),
            ]
        }

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec",
                source: .iana
            )
        }

        public static func cacheManifest() -> MediaType {
            .init(
                type: name,
                subtype: "cache-manifest",
                possibleExtensions: [
                    "appcache",
                    "manifest",
                ],
                source: .iana
            )
        }

        public static func calendar() -> MediaType {
            .init(
                type: name,
                subtype: "calendar",
                possibleExtensions: [
                    "ics",
                    "ifb",
                ],
                source: .iana
            )
        }

        public static func cmd() -> MediaType {
            .init(
                type: name,
                subtype: "cmd"
            )
        }

        public static func coffeescript() -> MediaType {
            .init(
                type: name,
                subtype: "coffeescript",
                possibleExtensions: [
                    "coffee",
                    "litcoffee",
                ]
            )
        }

        public static func cql() -> MediaType {
            .init(
                type: name,
                subtype: "cql",
                source: .iana
            )
        }

        public static func cqlExpression() -> MediaType {
            .init(
                type: name,
                subtype: "cql-expression",
                source: .iana
            )
        }

        public static func cqlIdentifier() -> MediaType {
            .init(
                type: name,
                subtype: "cql-identifier",
                source: .iana
            )
        }

        public static func css() -> MediaType {
            .init(
                type: name,
                subtype: "css",
                possibleExtensions: [
                    "css"
                ],
                source: .iana
            )
        }

        public static func csv() -> MediaType {
            .init(
                type: name,
                subtype: "csv",
                possibleExtensions: [
                    "csv"
                ],
                source: .iana
            )
        }

        public static func csvSchema() -> MediaType {
            .init(
                type: name,
                subtype: "csv-schema",
                source: .iana
            )
        }

        public static func directory() -> MediaType {
            .init(
                type: name,
                subtype: "directory",
                source: .iana
            )
        }

        public static func dns() -> MediaType {
            .init(
                type: name,
                subtype: "dns",
                source: .iana
            )
        }

        public static func ecmascript() -> MediaType {
            .init(
                type: name,
                subtype: "ecmascript",
                source: .apache
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp",
                source: .iana
            )
        }

        public static func enriched() -> MediaType {
            .init(
                type: name,
                subtype: "enriched",
                source: .iana
            )
        }

        public static func fhirpath() -> MediaType {
            .init(
                type: name,
                subtype: "fhirpath",
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

        public static func gff3() -> MediaType {
            .init(
                type: name,
                subtype: "gff3",
                source: .iana
            )
        }

        public static func grammarRefList() -> MediaType {
            .init(
                type: name,
                subtype: "grammar-ref-list",
                source: .iana
            )
        }

        public static func hl7v2() -> MediaType {
            .init(
                type: name,
                subtype: "hl7v2",
                source: .iana
            )
        }

        public static func html() -> MediaType {
            .init(
                type: name,
                subtype: "html",
                possibleExtensions: [
                    "html",
                    "htm",
                    "shtml",
                ],
                source: .iana
            )
        }

        public static func jade() -> MediaType {
            .init(
                type: name,
                subtype: "jade",
                possibleExtensions: [
                    "jade"
                ]
            )
        }

        public static func javascript() -> MediaType {
            .init(
                type: name,
                subtype: "javascript",
                possibleExtensions: [
                    "js",
                    "mjs",
                ],
                source: .iana
            )
        }

        public static func jcrCnd() -> MediaType {
            .init(
                type: name,
                subtype: "jcr-cnd",
                source: .iana
            )
        }

        public static func jsx() -> MediaType {
            .init(
                type: name,
                subtype: "jsx",
                possibleExtensions: [
                    "jsx"
                ]
            )
        }

        public static func less() -> MediaType {
            .init(
                type: name,
                subtype: "less",
                possibleExtensions: [
                    "less"
                ]
            )
        }

        public static func markdown() -> MediaType {
            .init(
                type: name,
                subtype: "markdown",
                possibleExtensions: [
                    "md",
                    "markdown",
                ],
                source: .iana
            )
        }

        public static func mathml() -> MediaType {
            .init(
                type: name,
                subtype: "mathml",
                possibleExtensions: [
                    "mml"
                ],
                source: .nginx
            )
        }

        public static func mdx() -> MediaType {
            .init(
                type: name,
                subtype: "mdx",
                possibleExtensions: [
                    "mdx"
                ]
            )
        }

        public static func mizar() -> MediaType {
            .init(
                type: name,
                subtype: "mizar",
                source: .iana
            )
        }

        public static func n3() -> MediaType {
            .init(
                type: name,
                subtype: "n3",
                possibleExtensions: [
                    "n3"
                ],
                source: .iana
            )
        }

        public static func org() -> MediaType {
            .init(
                type: name,
                subtype: "org",
                source: .iana
            )
        }

        public static func parameters() -> MediaType {
            .init(
                type: name,
                subtype: "parameters",
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

        public static func plain() -> MediaType {
            .init(
                type: name,
                subtype: "plain",
                possibleExtensions: [
                    "txt",
                    "text",
                    "conf",
                    "def",
                    "list",
                    "log",
                    "in",
                    "ini",
                ],
                source: .iana
            )
        }

        public static func provenanceNotation() -> MediaType {
            .init(
                type: name,
                subtype: "provenance-notation",
                source: .iana
            )
        }

        public static func prsFallensteinRst() -> MediaType {
            .init(
                type: name,
                subtype: "prs.fallenstein.rst",
                source: .iana
            )
        }

        public static func prsLinesTag() -> MediaType {
            .init(
                type: name,
                subtype: "prs.lines.tag",
                possibleExtensions: [
                    "dsc"
                ],
                source: .iana
            )
        }

        public static func prsPropLogic() -> MediaType {
            .init(
                type: name,
                subtype: "prs.prop.logic",
                source: .iana
            )
        }

        public static func prsTexi() -> MediaType {
            .init(
                type: name,
                subtype: "prs.texi",
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

        public static func rfc822Headers() -> MediaType {
            .init(
                type: name,
                subtype: "rfc822-headers",
                source: .iana
            )
        }

        public static func richtext() -> MediaType {
            .init(
                type: name,
                subtype: "richtext",
                possibleExtensions: [
                    "rtx"
                ],
                source: .iana
            )
        }

        public static func rtf() -> MediaType {
            .init(
                type: name,
                subtype: "rtf",
                possibleExtensions: [
                    "rtf"
                ],
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

        public static func sgml() -> MediaType {
            .init(
                type: name,
                subtype: "sgml",
                possibleExtensions: [
                    "sgml",
                    "sgm",
                ],
                source: .iana
            )
        }

        public static func shaclc() -> MediaType {
            .init(
                type: name,
                subtype: "shaclc",
                source: .iana
            )
        }

        public static func shex() -> MediaType {
            .init(
                type: name,
                subtype: "shex",
                possibleExtensions: [
                    "shex"
                ],
                source: .iana
            )
        }

        public static func slim() -> MediaType {
            .init(
                type: name,
                subtype: "slim",
                possibleExtensions: [
                    "slim",
                    "slm",
                ]
            )
        }

        public static func spdx() -> MediaType {
            .init(
                type: name,
                subtype: "spdx",
                possibleExtensions: [
                    "spdx"
                ],
                source: .iana
            )
        }

        public static func strings() -> MediaType {
            .init(
                type: name,
                subtype: "strings",
                source: .iana
            )
        }

        public static func stylus() -> MediaType {
            .init(
                type: name,
                subtype: "stylus",
                possibleExtensions: [
                    "stylus",
                    "styl",
                ]
            )
        }

        public static func t140() -> MediaType {
            .init(
                type: name,
                subtype: "t140",
                source: .iana
            )
        }

        public static func tabSeparatedValues() -> MediaType {
            .init(
                type: name,
                subtype: "tab-separated-values",
                possibleExtensions: [
                    "tsv"
                ],
                source: .iana
            )
        }

        public static func troff() -> MediaType {
            .init(
                type: name,
                subtype: "troff",
                possibleExtensions: [
                    "t",
                    "tr",
                    "roff",
                    "man",
                    "me",
                    "ms",
                ],
                source: .iana
            )
        }

        public static func turtle() -> MediaType {
            .init(
                type: name,
                subtype: "turtle",
                possibleExtensions: [
                    "ttl"
                ],
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

        public static func uriList() -> MediaType {
            .init(
                type: name,
                subtype: "uri-list",
                possibleExtensions: [
                    "uri",
                    "uris",
                    "urls",
                ],
                source: .iana
            )
        }

        public static func vcard() -> MediaType {
            .init(
                type: name,
                subtype: "vcard",
                possibleExtensions: [
                    "vcard"
                ],
                source: .iana
            )
        }

        public static func vndA() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.a",
                source: .iana
            )
        }

        public static func vndAbc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.abc",
                source: .iana
            )
        }

        public static func vndAsciiArt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ascii-art",
                source: .iana
            )
        }

        public static func vndCurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl",
                possibleExtensions: [
                    "curl"
                ],
                source: .iana
            )
        }

        public static func vndCurlDcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.dcurl",
                possibleExtensions: [
                    "dcurl"
                ],
                source: .apache
            )
        }

        public static func vndCurlMcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.mcurl",
                possibleExtensions: [
                    "mcurl"
                ],
                source: .apache
            )
        }

        public static func vndCurlScurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.scurl",
                possibleExtensions: [
                    "scurl"
                ],
                source: .apache
            )
        }

        public static func vndDebianCopyright() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.debian.copyright",
                source: .iana
            )
        }

        public static func vndDmclientscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dmclientscript",
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

        public static func vndEsmertecThemeDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.esmertec.theme-descriptor",
                source: .iana
            )
        }

        public static func vndExchangeable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.exchangeable",
                source: .iana
            )
        }

        public static func vndFamilysearchGedcom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.familysearch.gedcom",
                possibleExtensions: [
                    "ged"
                ],
                source: .iana
            )
        }

        public static func vndFiclabFlt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ficlab.flt",
                source: .iana
            )
        }

        public static func vndFly() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fly",
                possibleExtensions: [
                    "fly"
                ],
                source: .iana
            )
        }

        public static func vndFmiFlexstor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fmi.flexstor",
                possibleExtensions: [
                    "flx"
                ],
                source: .iana
            )
        }

        public static func vndGml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gml",
                source: .iana
            )
        }

        public static func vndGraphviz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.graphviz",
                possibleExtensions: [
                    "gv"
                ],
                source: .iana
            )
        }

        public static func vndHans() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hans",
                source: .iana
            )
        }

        public static func vndHgl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hgl",
                source: .iana
            )
        }

        public static func vndIn3d3dml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.in3d.3dml",
                possibleExtensions: [
                    "3dml"
                ],
                source: .iana
            )
        }

        public static func vndIn3dSpot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.in3d.spot",
                possibleExtensions: [
                    "spot"
                ],
                source: .iana
            )
        }

        public static func vndIptcNewsml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptc.newsml",
                source: .iana
            )
        }

        public static func vndIptcNitf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptc.nitf",
                source: .iana
            )
        }

        public static func vndLatexZ() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.latex-z",
                source: .iana
            )
        }

        public static func vndMotorolaReflex() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.reflex",
                source: .iana
            )
        }

        public static func vndMsMediapackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-mediapackage",
                source: .iana
            )
        }

        public static func vndNet2phoneCommcenterCommand() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.net2phone.commcenter.command",
                source: .iana
            )
        }

        public static func vndRadisysMsmlBasicLayout() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radisys.msml-basic-layout",
                source: .iana
            )
        }

        public static func vndSenxWarpscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.senx.warpscript",
                source: .iana
            )
        }

        public static func vndSiUricatalogue() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.si.uricatalogue",
                source: .apache
            )
        }

        public static func vndSosi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sosi",
                source: .iana
            )
        }

        public static func vndSunJ2meAppDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.j2me.app-descriptor",
                possibleExtensions: [
                    "jad"
                ],
                source: .iana
            )
        }

        public static func vndTrolltechLinguist() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trolltech.linguist",
                source: .iana
            )
        }

        public static func vndTypst() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.typst",
                source: .iana
            )
        }

        public static func vndVcf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vcf",
                source: .iana
            )
        }

        public static func vndWapSi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.si",
                source: .iana
            )
        }

        public static func vndWapSl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.sl",
                source: .iana
            )
        }

        public static func vndWapWml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wml",
                possibleExtensions: [
                    "wml"
                ],
                source: .iana
            )
        }

        public static func vndWapWmlscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlscript",
                possibleExtensions: [
                    "wmls"
                ],
                source: .iana
            )
        }

        public static func vndZooKcl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zoo.kcl",
                source: .iana
            )
        }

        public static func vtt() -> MediaType {
            .init(
                type: name,
                subtype: "vtt",
                possibleExtensions: [
                    "vtt"
                ],
                source: .iana
            )
        }

        public static func wgsl() -> MediaType {
            .init(
                type: name,
                subtype: "wgsl",
                possibleExtensions: [
                    "wgsl"
                ],
                source: .iana
            )
        }

        public static func xAsm() -> MediaType {
            .init(
                type: name,
                subtype: "x-asm",
                possibleExtensions: [
                    "s",
                    "asm",
                ],
                source: .apache
            )
        }

        public static func xC() -> MediaType {
            .init(
                type: name,
                subtype: "x-c",
                possibleExtensions: [
                    "c",
                    "cc",
                    "cxx",
                    "cpp",
                    "h",
                    "hh",
                    "dic",
                ],
                source: .apache
            )
        }

        public static func xComponent() -> MediaType {
            .init(
                type: name,
                subtype: "x-component",
                possibleExtensions: [
                    "htc"
                ],
                source: .nginx
            )
        }

        public static func xFortran() -> MediaType {
            .init(
                type: name,
                subtype: "x-fortran",
                possibleExtensions: [
                    "f",
                    "for",
                    "f77",
                    "f90",
                ],
                source: .apache
            )
        }

        public static func xGwtRpc() -> MediaType {
            .init(
                type: name,
                subtype: "x-gwt-rpc"
            )
        }

        public static func xHandlebarsTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "x-handlebars-template",
                possibleExtensions: [
                    "hbs"
                ]
            )
        }

        public static func xJavaSource() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-source",
                possibleExtensions: [
                    "java"
                ],
                source: .apache
            )
        }

        public static func xJqueryTmpl() -> MediaType {
            .init(
                type: name,
                subtype: "x-jquery-tmpl"
            )
        }

        public static func xLua() -> MediaType {
            .init(
                type: name,
                subtype: "x-lua",
                possibleExtensions: [
                    "lua"
                ]
            )
        }

        public static func xMarkdown() -> MediaType {
            .init(
                type: name,
                subtype: "x-markdown",
                possibleExtensions: [
                    "mkd"
                ]
            )
        }

        public static func xNfo() -> MediaType {
            .init(
                type: name,
                subtype: "x-nfo",
                possibleExtensions: [
                    "nfo"
                ],
                source: .apache
            )
        }

        public static func xOpml() -> MediaType {
            .init(
                type: name,
                subtype: "x-opml",
                possibleExtensions: [
                    "opml"
                ],
                source: .apache
            )
        }

        public static func xOrg() -> MediaType {
            .init(
                type: name,
                subtype: "x-org",
                possibleExtensions: [
                    "org"
                ]
            )
        }

        public static func xPascal() -> MediaType {
            .init(
                type: name,
                subtype: "x-pascal",
                possibleExtensions: [
                    "p",
                    "pas",
                ],
                source: .apache
            )
        }

        public static func xProcessing() -> MediaType {
            .init(
                type: name,
                subtype: "x-processing",
                possibleExtensions: [
                    "pde"
                ]
            )
        }

        public static func xSass() -> MediaType {
            .init(
                type: name,
                subtype: "x-sass",
                possibleExtensions: [
                    "sass"
                ]
            )
        }

        public static func xScss() -> MediaType {
            .init(
                type: name,
                subtype: "x-scss",
                possibleExtensions: [
                    "scss"
                ]
            )
        }

        public static func xSetext() -> MediaType {
            .init(
                type: name,
                subtype: "x-setext",
                possibleExtensions: [
                    "etx"
                ],
                source: .apache
            )
        }

        public static func xSfv() -> MediaType {
            .init(
                type: name,
                subtype: "x-sfv",
                possibleExtensions: [
                    "sfv"
                ],
                source: .apache
            )
        }

        public static func xSuseYmp() -> MediaType {
            .init(
                type: name,
                subtype: "x-suse-ymp",
                possibleExtensions: [
                    "ymp"
                ]
            )
        }

        public static func xUuencode() -> MediaType {
            .init(
                type: name,
                subtype: "x-uuencode",
                possibleExtensions: [
                    "uu"
                ],
                source: .apache
            )
        }

        public static func xVcalendar() -> MediaType {
            .init(
                type: name,
                subtype: "x-vcalendar",
                possibleExtensions: [
                    "vcs"
                ],
                source: .apache
            )
        }

        public static func xVcard() -> MediaType {
            .init(
                type: name,
                subtype: "x-vcard",
                possibleExtensions: [
                    "vcf"
                ],
                source: .apache
            )
        }

        public static func xml() -> MediaType {
            .init(
                type: name,
                subtype: "xml",
                possibleExtensions: [
                    "xml"
                ],
                source: .unknown
            )
        }

        public static func xmlExternalParsedEntity() -> MediaType {
            .init(
                type: name,
                subtype: "xml-external-parsed-entity",
                source: .iana
            )
        }

        public static func yaml() -> MediaType {
            .init(
                type: name,
                subtype: "yaml",
                possibleExtensions: [
                    "yaml",
                    "yml",
                ]
            )
        }

    }

}
