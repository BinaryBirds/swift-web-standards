//
//  MediaType+Model.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Model {

        static let name: String = "model"

        public static var all: [MediaType] {
            [
                _3mf(),
                e57(),
                gltfJson(),
                gltfBinary(),
                iges(),
                jt(),
                mesh(),
                mtl(),
                obj(),
                prc(),
                step(),
                stepXml(),
                stepZip(),
                stepXmlZip(),
                stl(),
                u3d(),
                vndBary(),
                vndCld(),
                vndColladaXml(),
                vndDwf(),
                vndFlatland3dml(),
                vndGdl(),
                vndGsGdl(),
                vndGsGdlAlt(),
                vndGtw(),
                vndMomlXml(),
                vndMts(),
                vndOpengex(),
                vndParasolidTransmitBinary(),
                vndParasolidTransmitText(),
                vndPythaPyox(),
                vndRosetteAnnotatedDataModel(),
                vndSapVds(),
                vndUsda(),
                vndUsdzZip(),
                vndValveSourceCompiledMap(),
                vndVtu(),
                vrml(),
                x3dBinary(),
                x3dFastinfoset(),
                x3dVrml(),
                x3dXml(),
                x3dVrmlAlt(),
            ]
        }

        public static func _3mf() -> MediaType {
            .init(
                type: name,
                subtype: "3mf",
                possibleExtensions: [
                    "3mf"
                ],
                source: .iana
            )
        }

        public static func e57() -> MediaType {
            .init(
                type: name,
                subtype: "e57",
                source: .iana
            )
        }

        public static func gltfJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gltf",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "gltf"
                ],
                source: .iana
            )
        }

        public static func gltfBinary() -> MediaType {
            .init(
                type: name,
                subtype: "gltf-binary",
                possibleExtensions: [
                    "glb"
                ],
                source: .iana
            )
        }

        public static func iges() -> MediaType {
            .init(
                type: name,
                subtype: "iges",
                possibleExtensions: [
                    "igs",
                    "iges",
                ],
                source: .iana
            )
        }

        public static func jt() -> MediaType {
            .init(
                type: name,
                subtype: "jt",
                possibleExtensions: [
                    "jt"
                ],
                source: .iana
            )
        }

        public static func mesh() -> MediaType {
            .init(
                type: name,
                subtype: "mesh",
                possibleExtensions: [
                    "msh",
                    "mesh",
                    "silo",
                ],
                source: .iana
            )
        }

        public static func mtl() -> MediaType {
            .init(
                type: name,
                subtype: "mtl",
                possibleExtensions: [
                    "mtl"
                ],
                source: .iana
            )
        }

        public static func obj() -> MediaType {
            .init(
                type: name,
                subtype: "obj",
                possibleExtensions: [
                    "obj"
                ],
                source: .iana
            )
        }

        public static func prc() -> MediaType {
            .init(
                type: name,
                subtype: "prc",
                possibleExtensions: [
                    "prc"
                ],
                source: .iana
            )
        }

        public static func step() -> MediaType {
            .init(
                type: name,
                subtype: "step",
                possibleExtensions: [
                    "step",
                    "stp",
                    "stpnc",
                    "p21",
                    "210",
                ],
                source: .iana
            )
        }

        public static func stepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "stpx"
                ],
                source: .iana
            )
        }

        public static func stepZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "stpz"
                ],
                source: .iana
            )
        }

        public static func stepXmlZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step-xml",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "stpxz"
                ],
                source: .iana
            )
        }

        public static func stl() -> MediaType {
            .init(
                type: name,
                subtype: "stl",
                possibleExtensions: [
                    "stl"
                ],
                source: .iana
            )
        }

        public static func u3d() -> MediaType {
            .init(
                type: name,
                subtype: "u3d",
                possibleExtensions: [
                    "u3d"
                ],
                source: .iana
            )
        }

        public static func vndBary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bary",
                possibleExtensions: [
                    "bary"
                ],
                source: .iana
            )
        }

        public static func vndCld() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cld",
                possibleExtensions: [
                    "cld"
                ],
                source: .iana
            )
        }

        public static func vndColladaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collada",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dae"
                ],
                source: .iana
            )
        }

        public static func vndDwf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dwf",
                possibleExtensions: [
                    "dwf"
                ],
                source: .iana
            )
        }

        public static func vndFlatland3dml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.flatland.3dml",
                source: .iana
            )
        }

        public static func vndGdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gdl",
                possibleExtensions: [
                    "gdl"
                ],
                source: .iana
            )
        }

        public static func vndGsGdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gs-gdl",
                source: .apache
            )
        }

        public static func vndGsGdlAlt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gs.gdl",
                source: .iana
            )
        }

        public static func vndGtw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gtw",
                possibleExtensions: [
                    "gtw"
                ],
                source: .iana
            )
        }

        public static func vndMomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.moml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mts",
                possibleExtensions: [
                    "mts"
                ],
                source: .iana
            )
        }

        public static func vndOpengex() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.opengex",
                possibleExtensions: [
                    "ogex"
                ],
                source: .iana
            )
        }

        public static func vndParasolidTransmitBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.parasolid.transmit.binary",
                possibleExtensions: [
                    "x_b"
                ],
                source: .iana
            )
        }

        public static func vndParasolidTransmitText() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.parasolid.transmit.text",
                possibleExtensions: [
                    "x_t"
                ],
                source: .iana
            )
        }

        public static func vndPythaPyox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pytha.pyox",
                possibleExtensions: [
                    "pyo",
                    "pyox",
                ],
                source: .iana
            )
        }

        public static func vndRosetteAnnotatedDataModel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rosette.annotated-data-model",
                source: .iana
            )
        }

        public static func vndSapVds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sap.vds",
                possibleExtensions: [
                    "vds"
                ],
                source: .iana
            )
        }

        public static func vndUsda() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.usda",
                possibleExtensions: [
                    "usda"
                ],
                source: .iana
            )
        }

        public static func vndUsdzZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.usdz",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "usdz"
                ],
                source: .iana
            )
        }

        public static func vndValveSourceCompiledMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.compiled-map",
                possibleExtensions: [
                    "bsp"
                ],
                source: .iana
            )
        }

        public static func vndVtu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vtu",
                possibleExtensions: [
                    "vtu"
                ],
                source: .iana
            )
        }

        public static func vrml() -> MediaType {
            .init(
                type: name,
                subtype: "vrml",
                possibleExtensions: [
                    "wrl",
                    "vrml",
                ],
                source: .iana
            )
        }

        public static func x3dBinary() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "binary"
                ),
                possibleExtensions: [
                    "x3db",
                    "x3dbz",
                ],
                source: .apache
            )
        }

        public static func x3dFastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "fastinfoset"
                ),
                possibleExtensions: [
                    "x3db"
                ],
                source: .iana
            )
        }

        public static func x3dVrml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "vrml"
                ),
                possibleExtensions: [
                    "x3dv",
                    "x3dvz",
                ],
                source: .apache
            )
        }

        public static func x3dXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "x3d",
                    "x3dz",
                ],
                source: .iana
            )
        }

        public static func x3dVrmlAlt() -> MediaType {
            .init(
                type: name,
                subtype: "x3d-vrml",
                possibleExtensions: [
                    "x3dv"
                ],
                source: .iana
            )
        }

    }

}
