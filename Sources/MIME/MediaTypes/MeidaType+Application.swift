//
//  MeidaType+Application.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

extension MediaType {

    public enum Application {

        static let name: String = "application"
        public static var all: [MediaType] {
            [
                _1dInterleavedParityfec(),
                _3gpdashQoeReportXml(),
                _3gppImsXml(),
                _3gppMbsObjectManifestJson(),
                _3gppMbsUserServiceDescriptionsJson(),
                _3gppMediaDeliveryMetricsReportJson(),
                _3gpphalJson(),
                _3gpphalformsJson(),
                a2l(),
                aceCbor(),
                aceJson(),
                aceGroupcommCbor(),
                aceTrlCbor(),
                activemessage(),
                activityJson(),
                aifCbor(),
                aifJson(),
                altoCdniJson(),
                altoCdnifilterJson(),
                altoCostmapJson(),
                altoCostmapfilterJson(),
                altoDirectoryJson(),
                altoEndpointcostJson(),
                altoEndpointcostparamsJson(),
                altoEndpointpropJson(),
                altoEndpointpropparamsJson(),
                altoErrorJson(),
                altoNetworkmapJson(),
                altoNetworkmapfilterJson(),
                altoPropmapJson(),
                altoPropmapparamsJson(),
                altoTipsJson(),
                altoTipsparamsJson(),
                altoUpdatestreamcontrolJson(),
                altoUpdatestreamparamsJson(),
                aml(),
                andrewInset(),
                appinstaller(),
                applefile(),
                applixware(),
                appx(),
                appxbundle(),
                asyncapiJson(),
                asyncapiYaml(),
                atJwt(),
                atf(),
                atfx(),
                atomXml(),
                atomcatXml(),
                atomdeletedXml(),
                atomicmail(),
                atomsvcXml(),
                atscDwdXml(),
                atscDynamicEventMessage(),
                atscHeldXml(),
                atscRdtJson(),
                atscRsatXml(),
                atxml(),
                authPolicyXml(),
                automationmlAmlXml(),
                automationmlAmlxZip(),
                bacnetXddZip(),
                batchSmtp(),
                bdoc(),
                beepXml(),
                bufr(),
                c2pa(),
                calendarJson(),
                calendarXml(),
                callCompletion(),
                cals1840(),
                captiveJson(),
                cbor(),
                cborSeq(),
                cccex(),
                ccmpXml(),
                ccxmlXml(),
                cdaXml(),
                cdfxXml(),
                cdmiCapability(),
                cdmiContainer(),
                cdmiDomain(),
                cdmiObject(),
                cdmiQueue(),
                cdni(),
                ceCbor(),
                cea(),
                cea2018Xml(),
                cellmlXml(),
                cfw(),
                cid(),
                cidEdhocCborSeq(),
                cityJson(),
                cityJsonSeq(),
                clr(),
                clueXml(),
                clueInfoXml(),
                cms(),
                cnrpXml(),
                coapEap(),
                coapGroupJson(),
                coapPayload(),
                commonground(),
                conciseProblemDetailsCbor(),
                conferenceInfoXml(),
                cose(),
                coseKey(),
                coseKeySet(),
                coseX509(),
                cplXml(),
                csrattrs(),
                cstaXml(),
                cstadataXml(),
                csvmJson(),
                cuSeeme(),
                cwl(),
                cwlJson(),
                cwlYaml(),
                cwt(),
                cybercash(),
                dart(),
                dashXml(),
                dashPatchXml(),
                dashdelta(),
                davmountXml(),
                dcaRft(),
                dcd(),
                decDx(),
                dialogInfoXml(),
                dicom(),
                dicomJson(),
                dicomXml(),
                did(),
                dii(),
                dit(),
                dns(),
                dnsJson(),
                dnsMessage(),
                docbookXml(),
                dotsCbor(),
                dpopJwt(),
                dskppXml(),
                dsscDer(),
                dsscXml(),
                dvcs(),
                eatCwt(),
                eatJwt(),
                eatBunCbor(),
                eatBunJson(),
                eatUcsCbor(),
                eatUcsJson(),
                ecmascript(),
                edhocCborSeq(),
                ediConsent(),
                ediX12(),
                edifact(),
                efi(),
                elmJson(),
                elmXml(),
                emergencycalldataCapXml(),
                emergencycalldataCommentXml(),
                emergencycalldataControlXml(),
                emergencycalldataDeviceinfoXml(),
                emergencycalldataEcallMsd(),
                emergencycalldataLegacyesnJson(),
                emergencycalldataProviderinfoXml(),
                emergencycalldataServiceinfoXml(),
                emergencycalldataSubscriberinfoXml(),
                emergencycalldataVedsXml(),
                emmaXml(),
                emotionmlXml(),
                encaprtp(),
                entityStatementJwt(),
                eppXml(),
                epubZip(),
                eshop(),
                exi(),
                expectCtReportJson(),
                express(),
                fastinfoset(),
                fastsoap(),
                fdf(),
                fdtXml(),
                fhirJson(),
                fhirXml(),
                fidoTrustedAppsJson(),
                fits(),
                flexfec(),
                fontSfnt(),
                fontTdpfr(),
                fontWoff(),
                frameworkAttributesXml(),
                geoJson(),
                geoJsonSeq(),
                geofeedCsv(),
                geopackageSqlite3(),
                geoposeJson(),
                geoxacmlJson(),
                geoxacmlXml(),
                gltfBuffer(),
                gmlXml(),
                gnapBindingJws(),
                gnapBindingJwsd(),
                gnapBindingRotationJws(),
                gnapBindingRotationJwsd(),
                gpxXml(),
                grib(),
                gxf(),
                gzip(),
                h224(),
                heldXml(),
                hjson(),
                hl7v2Xml(),
                http(),
                hyperstudio(),
                ibeKeyRequestXml(),
                ibePkgReplyXml(),
                ibePpData(),
                iges(),
                imIscomposingXml(),
                index(),
                indexCmd(),
                indexObj(),
                indexResponse(),
                indexVnd(),
                inkmlXml(),
                iotp(),
                ipfix(),
                ipp(),
                isup(),
                itsXml(),
                javaArchive(),
                javaSerializedObject(),
                javaVm(),
                javascript(),
                jf2feedJson(),
                jose(),
                joseJson(),
                jrdJson(),
                jscalendarJson(),
                jscontactJson(),
                json(),
                jsonPatchJson(),
                jsonPatchQueryJson(),
                jsonSeq(),
                json5(),
                jsonmlJson(),
                jsonpath(),
                jwkJson(),
                jwkSetJson(),
                jwkSetJwt(),
                jwt(),
                kbJwt(),
                kblXml(),
                kpmlRequestXml(),
                kpmlResponseXml(),
                ldJson(),
                lgrXml(),
                linkFormat(),
                linkset(),
                linksetJson(),
                loadControlXml(),
                logoutJwt(),
                lostXml(),
                lostsyncXml(),
                lpfZip(),
                lxf(),
                macBinhex40(),
                macCompactpro(),
                macwriteii(),
                madsXml(),
                manifestJson(),
                marc(),
                marcxmlXml(),
                mathematica(),
                mathmlXml(),
                mathmlContentXml(),
                mathmlPresentationXml(),
                mbmsAssociatedProcedureDescriptionXml(),
                mbmsDeregisterXml(),
                mbmsEnvelopeXml(),
                mbmsMskXml(),
                mbmsMskResponseXml(),
                mbmsProtectionDescriptionXml(),
                mbmsReceptionReportXml(),
                mbmsRegisterXml(),
                mbmsRegisterResponseXml(),
                mbmsScheduleXml(),
                mbmsUserServiceDescriptionXml(),
                mbox(),
                mediaPolicyDatasetXml(),
                mediaControlXml(),
                mediaservercontrolXml(),
                mergePatchJson(),
                metalinkXml(),
                metalink4Xml(),
                metsXml(),
                mf4(),
                mikey(),
                mipc(),
                missingBlocksCborSeq(),
                mmtAeiXml(),
                mmtUsdXml(),
                modsXml(),
                mossKeys(),
                mossSignature(),
                mosskeyData(),
                mosskeyRequest(),
                mp21(),
                mp4(),
                mpeg4Generic(),
                mpeg4Iod(),
                mpeg4IodXmt(),
                mrbConsumerXml(),
                mrbPublishXml(),
                mscIvrXml(),
                mscMixerXml(),
                msix(),
                msixbundle(),
                msword(),
                mudJson(),
                multipartCore(),
                mxf(),
                nQuads(),
                nTriples(),
                nasdata(),
                newsCheckgroups(),
                newsGroupinfo(),
                newsTransmission(),
                nlsmlXml(),
                node(),
                nss(),
                oauthAuthzReqJwt(),
                obliviousDnsMessage(),
                ocspRequest(),
                ocspResponse(),
                octetStream(),
                oda(),
                odmXml(),
                odx(),
                oebpsPackageXml(),
                ogg(),
                ohttpKeys(),
                omdocXml(),
                onenote(),
                opcNodesetXml(),
                oscore(),
                oxps(),
                p21(),
                p21Zip(),
                p2pOverlayXml(),
                parityfec(),
                passport(),
                patchOpsErrorXml(),
                pdf(),
                pdx(),
                pemCertificateChain(),
                pgpEncrypted(),
                pgpKeys(),
                pgpSignature(),
                picsRules(),
                pidfXml(),
                pidfDiffXml(),
                pkcs10(),
                pkcs12(),
                pkcs7Mime(),
                pkcs7Signature(),
                pkcs8(),
                pkcs8Encrypted(),
                pkixAttrCert(),
                pkixCert(),
                pkixCrl(),
                pkixPkipath(),
                pkixcmp(),
                plsXml(),
                pocSettingsXml(),
                postscript(),
                ppspTrackerJson(),
                privateTokenIssuerDirectory(),
                privateTokenRequest(),
                privateTokenResponse(),
                problemJson(),
                problemXml(),
                protobuf(),
                protobufJson(),
                provenanceXml(),
                providedClaimsJwt(),
                prsAlvestrandTitraxSheet(),
                prsCww(),
                prsCyn(),
                prsHpubZip(),
                prsImpliedDocumentXml(),
                prsImpliedExecutable(),
                prsImpliedObjectJson(),
                prsImpliedObjectJsonSeq(),
                prsImpliedObjectYaml(),
                prsImpliedStructure(),
                prsMayfile(),
                prsNprend(),
                prsPlucker(),
                prsRdfXmlCrypt(),
                prsVcfbzip2(),
                prsXsfXml(),
                pskcXml(),
                pvdJson(),
                qsig(),
                ramlYaml(),
                raptorfec(),
                rdapJson(),
                rdfXml(),
                reginfoXml(),
                relaxNgCompactSyntax(),
                remotePrinting(),
                reputonJson(),
                resolveResponseJwt(),
                resourceListsXml(),
                resourceListsDiffXml(),
                rfcXml(),
                riscos(),
                rlmiXml(),
                rlsServicesXml(),
                routeApdXml(),
                routeSTsidXml(),
                routeUsdXml(),
                rpkiChecklist(),
                rpkiGhostbusters(),
                rpkiManifest(),
                rpkiPublication(),
                rpkiRoa(),
                rpkiSignedTal(),
                rpkiUpdown(),
                rsMetadataXml(),
                rsdXml(),
                rssXml(),
                rtf(),
                rtploopback(),
                rtx(),
                samlassertionXml(),
                samlmetadataXml(),
                sarifJson(),
                sarifExternalPropertiesJson(),
                sbe(),
                sbmlXml(),
                scaipXml(),
                scimJson(),
                scittReceiptCose(),
                scittStatementCose(),
                scvpCvRequest(),
                scvpCvResponse(),
                scvpVpRequest(),
                scvpVpResponse(),
                sdJwt(),
                sdJwtJson(),
                sdfJson(),
                sdp(),
                seceventJwt(),
                senmlCbor(),
                senmlJson(),
                senmlXml(),
                senmlEtchCbor(),
                senmlEtchJson(),
                senmlExi(),
                sensmlCbor(),
                sensmlJson(),
                sensmlXml(),
                sensmlExi(),
                sepXml(),
                sepExi(),
                sessionInfo(),
                setPayment(),
                setPaymentInitiation(),
                setRegistration(),
                setRegistrationInitiation(),
                sgml(),
                sgmlOpenCatalog(),
                shfXml(),
                sieve(),
                simpleFilterXml(),
                simpleMessageSummary(),
                simplesymbolcontainer(),
                sipc(),
                slate(),
                smil(),
                smilXml(),
                smpte336m(),
                soapFastinfoset(),
                soapXml(),
                sparqlQuery(),
                sparqlResultsXml(),
                spdxJson(),
                spiritsEventXml(),
                sql(),
                srgs(),
                srgsXml(),
                sruXml(),
                ssdlXml(),
                sslkeylogfile(),
                ssmlXml(),
                st211041(),
                stixJson(),
                stratum(),
                suitEnvelopeCose(),
                swidCbor(),
                swidXml(),
                tampApexUpdate(),
                tampApexUpdateConfirm(),
                tampCommunityUpdate(),
                tampCommunityUpdateConfirm(),
                tampError(),
                tampSequenceAdjust(),
                tampSequenceAdjustConfirm(),
                tampStatusQuery(),
                tampStatusResponse(),
                tampUpdate(),
                tampUpdateConfirm(),
                tar(),
                taxiiJson(),
                tdJson(),
                teiXml(),
                tetraIsi(),
                texinfo(),
                thraudXml(),
                timestampQuery(),
                timestampReply(),
                timestampedData(),
                tlsrptGzip(),
                tlsrptJson(),
                tmJson(),
                tnauthlist(),
                tocCbor(),
                tokenIntrospectionJwt(),
                toml(),
                trickleIceSdpfrag(),
                trig(),
                trustChainJson(),
                trustMarkJwt(),
                trustMarkDelegationJwt(),
                ttmlXml(),
                tveTrigger(),
                tzif(),
                tzifLeap(),
                ubjson(),
                uccsCbor(),
                ujcsJson(),
                ulpfec(),
                urcGrpsheetXml(),
                urcRessheetXml(),
                urcTargetdescXml(),
                urcUisocketdescXml(),
                vc(),
                vcCose(),
                vcJwt(),
                vcardJson(),
                vcardXml(),
                vecXml(),
                vecPackageGzip(),
                vecPackageZip(),
                vemmi(),
                vividenceScriptfile(),
                vnd1000mindsDecisionModelXml(),
                vnd1ob(),
                vnd3gppProseXml(),
                vnd3gppProsePc3aXml(),
                vnd3gppProsePc3achXml(),
                vnd3gppProsePc3chXml(),
                vnd3gppProsePc8Xml(),
                vnd3gppV2xLocalServiceInformation(),
                vnd3gpp5gnas(),
                vnd3gpp5gsa2x(),
                vnd3gpp5gsa2xLocalServiceInformation(),
                vnd3gpp5gsv2x(),
                vnd3gpp5gsv2xLocalServiceInformation(),
                vnd3gppAccessTransferEventsXml(),
                vnd3gppBsfXml(),
                vnd3gppCrsXml(),
                vnd3gppCurrentLocationDiscoveryXml(),
                vnd3gppGmopXml(),
                vnd3gppGtpc(),
                vnd3gppInterworkingData(),
                vnd3gppLpp(),
                vnd3gppMcSignallingEar(),
                vnd3gppMcdataAffiliationCommandXml(),
                vnd3gppMcdataInfoXml(),
                vnd3gppMcdataMsgstoreCtrlRequestXml(),
                vnd3gppMcdataPayload(),
                vnd3gppMcdataRegroupXml(),
                vnd3gppMcdataServiceConfigXml(),
                vnd3gppMcdataSignalling(),
                vnd3gppMcdataUeConfigXml(),
                vnd3gppMcdataUserProfileXml(),
                vnd3gppMcpttAffiliationCommandXml(),
                vnd3gppMcpttFloorRequestXml(),
                vnd3gppMcpttInfoXml(),
                vnd3gppMcpttLocationInfoXml(),
                vnd3gppMcpttMbmsUsageInfoXml(),
                vnd3gppMcpttRegroupXml(),
                vnd3gppMcpttServiceConfigXml(),
                vnd3gppMcpttSignedXml(),
                vnd3gppMcpttUeConfigXml(),
                vnd3gppMcpttUeInitConfigXml(),
                vnd3gppMcpttUserProfileXml(),
                vnd3gppMcvideoAffiliationCommandXml(),
                vnd3gppMcvideoInfoXml(),
                vnd3gppMcvideoLocationInfoXml(),
                vnd3gppMcvideoMbmsUsageInfoXml(),
                vnd3gppMcvideoRegroupXml(),
                vnd3gppMcvideoServiceConfigXml(),
                vnd3gppMcvideoTransmissionRequestXml(),
                vnd3gppMcvideoUeConfigXml(),
                vnd3gppMcvideoUserProfileXml(),
                vnd3gppMidCallXml(),
                vnd3gppNgap(),
                vnd3gppPfcp(),
                vnd3gppPicBwLarge(),
                vnd3gppPicBwSmall(),
                vnd3gppPicBwVar(),
                vnd3gppPinappInfoXml(),
                vnd3gppS1ap(),
                vnd3gppSealAppCommRequirementsInfoXml(),
                vnd3gppSealDataDeliveryInfoCbor(),
                vnd3gppSealDataDeliveryInfoXml(),
                vnd3gppSealGroupDocXml(),
                vnd3gppSealInfoXml(),
                vnd3gppSealLocationInfoCbor(),
                vnd3gppSealLocationInfoXml(),
                vnd3gppSealMbmsUsageInfoXml(),
                vnd3gppSealMbsUsageInfoXml(),
                vnd3gppSealNetworkQosManagementInfoXml(),
                vnd3gppSealNetworkResourceInfoCbor(),
                vnd3gppSealUeConfigInfoXml(),
                vnd3gppSealUnicastInfoXml(),
                vnd3gppSealUserProfileInfoXml(),
                vnd3gppSms(),
                vnd3gppSmsXml(),
                vnd3gppSrvccExtXml(),
                vnd3gppSrvccInfoXml(),
                vnd3gppStateAndEventInfoXml(),
                vnd3gppUssdXml(),
                vnd3gppV2x(),
                vnd3gppVaeInfoXml(),
                vnd3gpp2BcmcsinfoXml(),
                vnd3gpp2Sms(),
                vnd3gpp2Tcap(),
                vnd3lightssoftwareImagescal(),
                vnd3mPostItNotes(),
                vndAccpacSimplyAso(),
                vndAccpacSimplyImp(),
                vndAcmAddressxferJson(),
                vndAcmChatbotJson(),
                vndAcucobol(),
                vndAcucorp(),
                vndAdobeAirApplicationInstallerPackageZip(),
                vndAdobeFlashMovie(),
                vndAdobeFormscentralFcdt(),
                vndAdobeFxp(),
                vndAdobePartialUpload(),
                vndAdobeXdpXml(),
                vndAdobeXfdf(),
                vndAetherImp(),
                vndAfpcAfplinedata(),
                vndAfpcAfplinedataPagedef(),
                vndAfpcCmocaCmresource(),
                vndAfpcFocaCharset(),
                vndAfpcFocaCodedfont(),
                vndAfpcFocaCodepage(),
                vndAfpcModca(),
                vndAfpcModcaCmtable(),
                vndAfpcModcaFormdef(),
                vndAfpcModcaMediummap(),
                vndAfpcModcaObjectcontainer(),
                vndAfpcModcaOverlay(),
                vndAfpcModcaPagesegment(),
                vndAge(),
                vndAhBarcode(),
                vndAheadSpace(),
                vndAirzipFilesecureAzf(),
                vndAirzipFilesecureAzs(),
                vndAmadeusJson(),
                vndAmazonEbook(),
                vndAmazonMobi8Ebook(),
                vndAmericandynamicsAcc(),
                vndAmigaAmi(),
                vndAmundsenMazeXml(),
                vndAndroidOta(),
                vndAndroidPackageArchive(),
                vndAnki(),
                vndAnserWebCertificateIssueInitiation(),
                vndAnserWebFundsTransferInitiation(),
                vndAntixGameComponent(),
                vndApacheArrowFile(),
                vndApacheArrowStream(),
                vndApacheParquet(),
                vndApacheThriftBinary(),
                vndApacheThriftCompact(),
                vndApacheThriftJson(),
                vndApexlang(),
                vndApiJson(),
                vndAplextorWarrpJson(),
                vndApothekendeReservationJson(),
                vndAppleInstallerXml(),
                vndAppleKeynote(),
                vndAppleMpegurl(),
                vndAppleNumbers(),
                vndApplePages(),
                vndApplePkpass(),
                vndArastraSwi(),
                vndAristanetworksSwi(),
                vndArtisanJson(),
                vndArtsquare(),
                vndAs207960VasConfigJer(),
                vndAs207960VasConfigUper(),
                vndAs207960VasTapJer(),
                vndAs207960VasTapUper(),
                vndAstraeaSoftwareIota(),
                vndAudiograph(),
                vndAutodeskFbx(),
                vndAutopackage(),
                vndAvalonJson(),
                vndAvistarXml(),
                vndBalsamiqBmmlXml(),
                vndBalsamiqBmpr(),
                vndBananaAccounting(),
                vndBbfUspError(),
                vndBbfUspMsg(),
                vndBbfUspMsgJson(),
                vndBekitzurStechJson(),
                vndBelightsoftLhzdZip(),
                vndBelightsoftLhzlZip(),
                vndBintMedContent(),
                vndBiopaxRdfXml(),
                vndBlinkIdbValueWrapper(),
                vndBlueiceMultipass(),
                vndBluetoothEpOob(),
                vndBluetoothLeOob(),
                vndBmi(),
                vndBpf(),
                vndBpf3(),
                vndBusinessobjects(),
                vndByuUapiJson(),
                vndBzip3(),
                vndC3vocScheduleXml(),
                vndCabJscript(),
                vndCanonCpdl(),
                vndCanonLips(),
                vndCapasystemsPgJson(),
                vndCel(),
                vndCendioThinlincClientconf(),
                vndCenturySystemsTcpStream(),
                vndChemdrawXml(),
                vndChessPgn(),
                vndChipnutsKaraokeMmd(),
                vndCiedi(),
                vndCinderella(),
                vndCirpackIsdnExt(),
                vndCitationstylesStyleXml(),
                vndClaymore(),
                vndCloantoRp9(),
                vndClonkC4group(),
                vndCluetrustCartomobileConfig(),
                vndCluetrustCartomobileConfigPkg(),
                vndCncfHelmChartContentV1TarGzip(),
                vndCncfHelmChartProvenanceV1Prov(),
                vndCncfHelmConfigV1Json(),
                vndCoffeescript(),
                vndCollabioXodocumentsDocument(),
                vndCollabioXodocumentsDocumentTemplate(),
                vndCollabioXodocumentsPresentation(),
                vndCollabioXodocumentsPresentationTemplate(),
                vndCollabioXodocumentsSpreadsheet(),
                vndCollabioXodocumentsSpreadsheetTemplate(),
                vndCollectionJson(),
                vndCollectionDocJson(),
                vndCollectionNextJson(),
                vndComicbookZip(),
                vndComicbookRar(),
                vndCommerceBattelle(),
                vndCommonspace(),
                vndContactCmsg(),
                vndCoreosIgnitionJson(),
                vndCosmocaller(),
                vndCrickClicker(),
                vndCrickClickerKeyboard(),
                vndCrickClickerPalette(),
                vndCrickClickerTemplate(),
                vndCrickClickerWordbank(),
                vndCriticaltoolsWbsXml(),
                vndCryptiiPipeJson(),
                vndCryptoShadeFile(),
                vndCryptomatorEncrypted(),
                vndCryptomatorVault(),
                vndCtcPosml(),
                vndCtctWsXml(),
                vndCupsPdf(),
                vndCupsPostscript(),
                vndCupsPpd(),
                vndCupsRaster(),
                vndCupsRaw(),
                vndCurl(),
                vndCurlCar(),
                vndCurlPcurl(),
                vndCyanDeanRootXml(),
                vndCybank(),
                vndCyclonedxJson(),
                vndCyclonedxXml(),
                vndD2lCoursepackage1p0Zip(),
                vndD3mDataset(),
                vndD3mProblem(),
                vndDart(),
                vndDataVisionRdz(),
                vndDatalog(),
                vndDatapackageJson(),
                vndDataresourceJson(),
                vndDbf(),
                vndDcmpXml(),
                vndDebianBinaryPackage(),
                vndDeceData(),
                vndDeceTtmlXml(),
                vndDeceUnspecified(),
                vndDeceZip(),
                vndDenovoFcselayoutLink(),
                vndDesmumeMovie(),
                vndDirBiPlateDlNosuffix(),
                vndDmDelegationXml(),
                vndDna(),
                vndDocumentJson(),
                vndDolbyMlp(),
                vndDolbyMobile1(),
                vndDolbyMobile2(),
                vndDoremirScorecloudBinaryDocument(),
                vndDpgraph(),
                vndDreamfactory(),
                vndDriveJson(),
                vndDsKeypoint(),
                vndDtgLocal(),
                vndDtgLocalFlash(),
                vndDtgLocalHtml(),
                vndDvbAit(),
                vndDvbDvbislXml(),
                vndDvbDvbj(),
                vndDvbEsgcontainer(),
                vndDvbIpdcdftnotifaccess(),
                vndDvbIpdcesgaccess(),
                vndDvbIpdcesgaccess2(),
                vndDvbIpdcesgpdd(),
                vndDvbIpdcroaming(),
                vndDvbIptvAlfecBase(),
                vndDvbIptvAlfecEnhancement(),
                vndDvbNotifAggregateRootXml(),
                vndDvbNotifContainerXml(),
                vndDvbNotifGenericXml(),
                vndDvbNotifIaMsglistXml(),
                vndDvbNotifIaRegistrationRequestXml(),
                vndDvbNotifIaRegistrationResponseXml(),
                vndDvbNotifInitXml(),
                vndDvbPfr(),
                vndDvbService(),
                vndDxr(),
                vndDynageo(),
                vndDzr(),
                vndEasykaraokeCdgdownload(),
                vndEcdisUpdate(),
                vndEcipRlp(),
                vndEclipseDittoJson(),
                vndEcowinChart(),
                vndEcowinFilerequest(),
                vndEcowinFileupdate(),
                vndEcowinSeries(),
                vndEcowinSeriesrequest(),
                vndEcowinSeriesupdate(),
                vndEfiImg(),
                vndEfiIso(),
                vndElnZip(),
                vndEmclientAccessrequestXml(),
                vndEnliven(),
                vndEnphaseEnvoy(),
                vndEprintsDataXml(),
                vndEpsonEsf(),
                vndEpsonMsf(),
                vndEpsonQuickanime(),
                vndEpsonSalt(),
                vndEpsonSsf(),
                vndEricssonQuickcall(),
                vndErofs(),
                vndEspassEspassZip(),
                vndEszigno3Xml(),
                vndEtsiAocXml(),
                vndEtsiAsicEZip(),
                vndEtsiAsicSZip(),
                vndEtsiCugXml(),
                vndEtsiIptvcommandXml(),
                vndEtsiIptvdiscoveryXml(),
                vndEtsiIptvprofileXml(),
                vndEtsiIptvsadBcXml(),
                vndEtsiIptvsadCodXml(),
                vndEtsiIptvsadNpvrXml(),
                vndEtsiIptvserviceXml(),
                vndEtsiIptvsyncXml(),
                vndEtsiIptvueprofileXml(),
                vndEtsiMcidXml(),
                vndEtsiMheg5(),
                vndEtsiOverloadControlPolicyDatasetXml(),
                vndEtsiPstnXml(),
                vndEtsiSciXml(),
                vndEtsiSimservsXml(),
                vndEtsiTimestampToken(),
                vndEtsiTslXml(),
                vndEtsiTslDer(),
                vndEuKasparianCarJson(),
                vndEudoraData(),
                vndEvolvEcigProfile(),
                vndEvolvEcigSettings(),
                vndEvolvEcigTheme(),
                vndExstreamEmpowerZip(),
                vndExstreamPackage(),
                vndEzpixAlbum(),
                vndEzpixPackage(),
                vndFSecureMobile(),
                vndFafYaml(),
                vndFamilysearchGedcomZip(),
                vndFastcopyDiskImage(),
                vndFdf(),
                vndFdsnMseed(),
                vndFdsnSeed(),
                vndFdsnStationxmlXml(),
                vndFfsns(),
                vndFgb(),
                vndFiclabFlbZip(),
                vndFilmitZfc(),
                vndFints(),
                vndFiremonkeysCloudcell(),
                vndFlographit(),
                vndFluxtimeClip(),
                vndFontFontforgeSfd(),
                vndFramemaker(),
                vndFreelogComic(),
                vndFrogansFnc(),
                vndFrogansLtf(),
                vndFscWeblaunch(),
                vndFujifilmFbDocuworks(),
                vndFujifilmFbDocuworksBinder(),
                vndFujifilmFbDocuworksContainer(),
                vndFujifilmFbJfiXml(),
                vndFujitsuOasys(),
                vndFujitsuOasys2(),
                vndFujitsuOasys3(),
                vndFujitsuOasysgp(),
                vndFujitsuOasysprs(),
                vndFujixeroxArtEx(),
                vndFujixeroxArt4(),
                vndFujixeroxDdd(),
                vndFujixeroxDocuworks(),
                vndFujixeroxDocuworksBinder(),
                vndFujixeroxDocuworksContainer(),
                vndFujixeroxHbpl(),
                vndFutMisnet(),
                vndFutoinCbor(),
                vndFutoinJson(),
                vndFuzzysheet(),
                vndG3pixG3fc(),
                vndGa4ghPassportJwt(),
                vndGenomatixTuxedo(),
                vndGenozip(),
                vndGenticsGrdJson(),
                vndGentooCatmetadataXml(),
                vndGentooEbuild(),
                vndGentooEclass(),
                vndGentooGpkg(),
                vndGentooManifest(),
                vndGentooPkgmetadataXml(),
                vndGentooXpak(),
                vndGeoJson(),
                vndGeocubeXml(),
                vndGeogebraFile(),
                vndGeogebraPinboard(),
                vndGeogebraSlides(),
                vndGeogebraTool(),
                vndGeometryExplorer(),
                vndGeonext(),
                vndGeoplan(),
                vndGeospace(),
                vndGerber(),
                vndGlobalplatformCardContentMgt(),
                vndGlobalplatformCardContentMgtResponse(),
                vndGmx(),
                vndGnuTalerExchangeJson(),
                vndGnuTalerMerchantJson(),
                vndGoogleAppsAudio(),
                vndGoogleAppsDocument(),
                vndGoogleAppsDrawing(),
                vndGoogleAppsDriveSdk(),
                vndGoogleAppsFile(),
                vndGoogleAppsFolder(),
                vndGoogleAppsForm(),
                vndGoogleAppsFusiontable(),
                vndGoogleAppsJam(),
                vndGoogleAppsMailLayout(),
                vndGoogleAppsMap(),
                vndGoogleAppsPhoto(),
                vndGoogleAppsPresentation(),
                vndGoogleAppsScript(),
                vndGoogleAppsShortcut(),
                vndGoogleAppsSite(),
                vndGoogleAppsSpreadsheet(),
                vndGoogleAppsUnknown(),
                vndGoogleAppsVideo(),
                vndGoogleEarthKmlXml(),
                vndGoogleEarthKmz(),
                vndGovSkEFormXml(),
                vndGovSkEFormZip(),
                vndGovSkXmldatacontainerXml(),
                vndGpxseeMapXml(),
                vndGrafeq(),
                vndGridmp(),
                vndGrooveAccount(),
                vndGrooveHelp(),
                vndGrooveIdentityMessage(),
                vndGrooveInjector(),
                vndGrooveToolMessage(),
                vndGrooveToolTemplate(),
                vndGrooveVcard(),
                vndHalJson(),
                vndHalXml(),
                vndHandheldEntertainmentXml(),
                vndHbci(),
                vndHcJson(),
                vndHclBireports(),
                vndHdt(),
                vndHerokuJson(),
                vndHheLessonPlayer(),
                vndHpHpgl(),
                vndHpHpid(),
                vndHpHps(),
                vndHpJlyt(),
                vndHpPcl(),
                vndHpPclxl(),
                vndHsl(),
                vndHttphone(),
                vndHydrostatixSofData(),
                vndHyperJson(),
                vndHyperItemJson(),
                vndHyperdriveJson(),
                vndHzn3dCrossword(),
                vndIbmAfplinedata(),
                vndIbmElectronicMedia(),
                vndIbmMinipay(),
                vndIbmModcap(),
                vndIbmRightsManagement(),
                vndIbmSecureContainer(),
                vndIccprofile(),
                vndIeee1905(),
                vndIgloader(),
                vndImagemeterFolderZip(),
                vndImagemeterImageZip(),
                vndImmervisionIvp(),
                vndImmervisionIvu(),
                vndImsImsccv1p1(),
                vndImsImsccv1p2(),
                vndImsImsccv1p3(),
                vndImsLisV2ResultJson(),
                vndImsLtiV2ToolconsumerprofileJson(),
                vndImsLtiV2ToolproxyJson(),
                vndImsLtiV2ToolproxyIdJson(),
                vndImsLtiV2ToolsettingsJson(),
                vndImsLtiV2ToolsettingsSimpleJson(),
                vndInformedcontrolRmsXml(),
                vndInformixVisionary(),
                vndInfotechProject(),
                vndInfotechProjectXml(),
                vndInnopathWampNotification(),
                vndInsorsIgm(),
                vndInterconFormnet(),
                vndIntergeo(),
                vndIntertrustDigibox(),
                vndIntertrustNncp(),
                vndIntuQbo(),
                vndIntuQfx(),
                vndIpfsIpnsRecord(),
                vndIpldCar(),
                vndIpldDagCbor(),
                vndIpldDagJson(),
                vndIpldRaw(),
                vndIptcG2CatalogitemXml(),
                vndIptcG2ConceptitemXml(),
                vndIptcG2KnowledgeitemXml(),
                vndIptcG2NewsitemXml(),
                vndIptcG2NewsmessageXml(),
                vndIptcG2PackageitemXml(),
                vndIptcG2PlanningitemXml(),
                vndIpunpluggedRcprofile(),
                vndIrepositoryPackageXml(),
                vndIsXpr(),
                vndIsacFcs(),
                vndIso1178310Zip(),
                vndJam(),
                vndJapannetDirectoryService(),
                vndJapannetJpnstoreWakeup(),
                vndJapannetPaymentWakeup(),
                vndJapannetRegistration(),
                vndJapannetRegistrationWakeup(),
                vndJapannetSetstoreWakeup(),
                vndJapannetVerification(),
                vndJapannetVerificationWakeup(),
                vndJcpJavameMidletRms(),
                vndJisp(),
                vndJoostJodaArchive(),
                vndJskIsdnNgn(),
                vndKahootz(),
                vndKdeKarbon(),
                vndKdeKchart(),
                vndKdeKformula(),
                vndKdeKivio(),
                vndKdeKontour(),
                vndKdeKpresenter(),
                vndKdeKspread(),
                vndKdeKword(),
                vndKdl(),
                vndKenameaapp(),
                vndKeymanKmpZip(),
                vndKeymanKmx(),
                vndKidspiration(),
                vndKinar(),
                vndKoan(),
                vndKodakDescriptor(),
                vndLas(),
                vndLasLasJson(),
                vndLasLasXml(),
                vndLaszip(),
                vndLdevProductlicensing(),
                vndLeapJson(),
                vndLibertyRequestXml(),
                vndLlamagraphicsLifeBalanceDesktop(),
                vndLlamagraphicsLifeBalanceExchangeXml(),
                vndLogipipeCircuitZip(),
                vndLoom(),
                vndLotus123(),
                vndLotusApproach(),
                vndLotusFreelance(),
                vndLotusNotes(),
                vndLotusOrganizer(),
                vndLotusScreencam(),
                vndLotusWordpro(),
                vndMacportsPortpkg(),
                vndMaml(),
                vndMapboxVectorTile(),
                vndMarlinDrmActiontokenXml(),
                vndMarlinDrmConftokenXml(),
                vndMarlinDrmLicenseXml(),
                vndMarlinDrmMdcf(),
                vndMasonJson(),
                vndMaxarArchive3tzZip(),
                vndMaxmindMaxmindDb(),
                vndMcd(),
                vndMdl(),
                vndMdlMbsdf(),
                vndMedcalcdata(),
                vndMediastationCdkey(),
                vndMedicalholodeckRecordxr(),
                vndMeridianSlingshot(),
                vndMermaid(),
                vndMfer(),
                vndMfmp(),
                vndMicroJson(),
                vndMicrografxFlo(),
                vndMicrografxIgx(),
                vndMicrosoftPortableExecutable(),
                vndMicrosoftWindowsThumbnailCache(),
                vndMieleJson(),
                vndMif(),
                vndMinisoftHp3000Save(),
                vndMitsubishiMistyGuardTrustweb(),
                vndMobiusDaf(),
                vndMobiusDis(),
                vndMobiusMbk(),
                vndMobiusMqy(),
                vndMobiusMsl(),
                vndMobiusPlc(),
                vndMobiusTxf(),
                vndModl(),
                vndMophunApplication(),
                vndMophunCertificate(),
                vndMotorolaFlexsuite(),
                vndMotorolaFlexsuiteAdsi(),
                vndMotorolaFlexsuiteFis(),
                vndMotorolaFlexsuiteGotap(),
                vndMotorolaFlexsuiteKmr(),
                vndMotorolaFlexsuiteTtc(),
                vndMotorolaFlexsuiteWem(),
                vndMotorolaIprm(),
                vndMozillaXulXml(),
                vndMs3mfdocument(),
                vndMsArtgalry(),
                vndMsAsf(),
                vndMsCabCompressed(),
                vndMsColorIccprofile(),
                vndMsExcel(),
                vndMsExcelAddinMacroenabled12(),
                vndMsExcelSheetBinaryMacroenabled12(),
                vndMsExcelSheetMacroenabled12(),
                vndMsExcelTemplateMacroenabled12(),
                vndMsFontobject(),
                vndMsHtmlhelp(),
                vndMsIms(),
                vndMsLrm(),
                vndMsOfficeActivexXml(),
                vndMsOfficetheme(),
                vndMsOpentype(),
                vndMsOutlook(),
                vndMsPackageObfuscatedOpentype(),
                vndMsPkiSeccat(),
                vndMsPkiStl(),
                vndMsPlayreadyInitiatorXml(),
                vndMsPowerpoint(),
                vndMsPowerpointAddinMacroenabled12(),
                vndMsPowerpointPresentationMacroenabled12(),
                vndMsPowerpointSlideMacroenabled12(),
                vndMsPowerpointSlideshowMacroenabled12(),
                vndMsPowerpointTemplateMacroenabled12(),
                vndMsPrintdevicecapabilitiesXml(),
                vndMsPrintingPrintticketXml(),
                vndMsPrintschematicketXml(),
                vndMsProject(),
                vndMsTnef(),
                vndMsVisioViewer(),
                vndMsWindowsDevicepairing(),
                vndMsWindowsNwprintingOob(),
                vndMsWindowsPrinterpairing(),
                vndMsWindowsWsdOob(),
                vndMsWmdrmLicChlgReq(),
                vndMsWmdrmLicResp(),
                vndMsWmdrmMeterChlgReq(),
                vndMsWmdrmMeterResp(),
                vndMsWordDocumentMacroenabled12(),
                vndMsWordTemplateMacroenabled12(),
                vndMsWorks(),
                vndMsWpl(),
                vndMsXpsdocument(),
                vndMsaDiskImage(),
                vndMseq(),
                vndMsgpack(),
                vndMsign(),
                vndMultiadCreator(),
                vndMultiadCreatorCif(),
                vndMusicNiff(),
                vndMusician(),
                vndMuveeStyle(),
                vndMynfc(),
                vndNacamarYbridJson(),
                vndNatoBindingdataobjectCbor(),
                vndNatoBindingdataobjectJson(),
                vndNatoBindingdataobjectXml(),
                vndNatoOpenxmlformatsPackageIepdZip(),
                vndNcdControl(),
                vndNcdReference(),
                vndNearstInvJson(),
                vndNebumindLine(),
                vndNervana(),
                vndNetfpx(),
                vndNeurolanguageNlu(),
                vndNimn(),
                vndNintendoNitroRom(),
                vndNintendoSnesRom(),
                vndNitf(),
                vndNoblenetDirectory(),
                vndNoblenetSealer(),
                vndNoblenetWeb(),
                vndNokiaCatalogs(),
                vndNokiaConmlWbxml(),
                vndNokiaConmlXml(),
                vndNokiaIptvConfigXml(),
                vndNokiaIsdsRadioPresets(),
                vndNokiaLandmarkWbxml(),
                vndNokiaLandmarkXml(),
                vndNokiaLandmarkcollectionXml(),
                vndNokiaNGageAcXml(),
                vndNokiaNGageData(),
                vndNokiaNGageSymbianInstall(),
                vndNokiaNcd(),
                vndNokiaPcdWbxml(),
                vndNokiaPcdXml(),
                vndNokiaRadioPreset(),
                vndNokiaRadioPresets(),
                vndNovadigmEdm(),
                vndNovadigmEdx(),
                vndNovadigmExt(),
                vndNttLocalContentShare(),
                vndNttLocalFileTransfer(),
                vndNttLocalOgwRemoteAccess(),
                vndNttLocalSipTaRemote(),
                vndNttLocalSipTaTcpStream(),
                vndNubaltecNudokuGame(),
                vndOaiWorkflows(),
                vndOaiWorkflowsJson(),
                vndOaiWorkflowsYaml(),
                vndOasisOpendocumentBase(),
                vndOasisOpendocumentChart(),
                vndOasisOpendocumentChartTemplate(),
                vndOasisOpendocumentDatabase(),
                vndOasisOpendocumentFormula(),
                vndOasisOpendocumentFormulaTemplate(),
                vndOasisOpendocumentGraphics(),
                vndOasisOpendocumentGraphicsTemplate(),
                vndOasisOpendocumentImage(),
                vndOasisOpendocumentImageTemplate(),
                vndOasisOpendocumentPresentation(),
                vndOasisOpendocumentPresentationTemplate(),
                vndOasisOpendocumentSpreadsheet(),
                vndOasisOpendocumentSpreadsheetTemplate(),
                vndOasisOpendocumentText(),
                vndOasisOpendocumentTextMaster(),
                vndOasisOpendocumentTextMasterTemplate(),
                vndOasisOpendocumentTextTemplate(),
                vndOasisOpendocumentTextWeb(),
                vndObn(),
                vndOcfCbor(),
                vndOciImageManifestV1Json(),
                vndOftnL10nJson(),
                vndOipfContentaccessdownloadXml(),
                vndOipfContentaccessstreamingXml(),
                vndOipfCspgHexbinary(),
                vndOipfDaeSvgXml(),
                vndOipfDaeXhtmlXml(),
                vndOipfMippvcontrolmessageXml(),
                vndOipfPaeGem(),
                vndOipfSpdiscoveryXml(),
                vndOipfSpdlistXml(),
                vndOipfUeprofileXml(),
                vndOipfUserprofileXml(),
                vndOlpcSugar(),
                vndOmaScwsConfig(),
                vndOmaScwsHttpRequest(),
                vndOmaScwsHttpResponse(),
                vndOmaBcastAssociatedProcedureParameterXml(),
                vndOmaBcastDrmTriggerXml(),
                vndOmaBcastImdXml(),
                vndOmaBcastLtkm(),
                vndOmaBcastNotificationXml(),
                vndOmaBcastProvisioningtrigger(),
                vndOmaBcastSgboot(),
                vndOmaBcastSgddXml(),
                vndOmaBcastSgdu(),
                vndOmaBcastSimpleSymbolContainer(),
                vndOmaBcastSmartcardTriggerXml(),
                vndOmaBcastSprovXml(),
                vndOmaBcastStkm(),
                vndOmaCabAddressBookXml(),
                vndOmaCabFeatureHandlerXml(),
                vndOmaCabPccXml(),
                vndOmaCabSubsInviteXml(),
                vndOmaCabUserPrefsXml(),
                vndOmaDcd(),
                vndOmaDcdc(),
                vndOmaDd2Xml(),
                vndOmaDrmRisdXml(),
                vndOmaGroupUsageListXml(),
                vndOmaLwm2mCbor(),
                vndOmaLwm2mJson(),
                vndOmaLwm2mTlv(),
                vndOmaPalXml(),
                vndOmaPocDetailedProgressReportXml(),
                vndOmaPocFinalReportXml(),
                vndOmaPocGroupsXml(),
                vndOmaPocInvocationDescriptorXml(),
                vndOmaPocOptimizedProgressReportXml(),
                vndOmaPush(),
                vndOmaScidmMessagesXml(),
                vndOmaXcapDirectoryXml(),
                vndOmadsEmailXml(),
                vndOmadsFileXml(),
                vndOmadsFolderXml(),
                vndOmalocSuplInit(),
                vndOmsCellularCoseContentCbor(),
                vndOnepager(),
                vndOnepagertamp(),
                vndOnepagertamx(),
                vndOnepagertat(),
                vndOnepagertatp(),
                vndOnepagertatx(),
                vndOnvifMetadata(),
                vndOpenbloxGameXml(),
                vndOpenbloxGameBinary(),
                vndOpeneyeOeb(),
                vndOpenofficeorgExtension(),
                vndOpenprinttag(),
                vndOpenstreetmapDataXml(),
                vndOpentimestampsOts(),
                vndOpenvpiDspxJson(),
                vndOpenxmlformatsOfficedocumentCustomPropertiesXml(),
                vndOpenxmlformatsOfficedocumentCustomxmlpropertiesXml(),
                vndOpenxmlformatsOfficedocumentDrawingXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlChartXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlChartshapesXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlDiagramcolorsXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlDiagramdataXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlDiagramlayoutXml(),
                vndOpenxmlformatsOfficedocumentDrawingmlDiagramstyleXml(),
                vndOpenxmlformatsOfficedocumentExtendedPropertiesXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlCommentauthorsXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlCommentsXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlHandoutmasterXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlNotesmasterXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlNotesslideXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlPresentation(),
                vndOpenxmlformatsOfficedocumentPresentationmlPresentationMainXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlPrespropsXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlide(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlideXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlidelayoutXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlidemasterXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlideshow(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlideshowMainXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlSlideupdateinfoXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlTablestylesXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlTagsXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlTemplate(),
                vndOpenxmlformatsOfficedocumentPresentationmlTemplateMainXml(),
                vndOpenxmlformatsOfficedocumentPresentationmlViewpropsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlCalcchainXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlChartsheetXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlCommentsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlConnectionsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlDialogsheetXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlExternallinkXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcachedefinitionXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcacherecordsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlPivottableXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlQuerytableXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionheadersXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionlogXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlSharedstringsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetMainXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetmetadataXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlStylesXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlTableXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlTablesinglecellsXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplate(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplateMainXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlUsernamesXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlVolatiledependenciesXml(),
                vndOpenxmlformatsOfficedocumentSpreadsheetmlWorksheetXml(),
                vndOpenxmlformatsOfficedocumentThemeXml(),
                vndOpenxmlformatsOfficedocumentThemeoverrideXml(),
                vndOpenxmlformatsOfficedocumentVmldrawing(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlCommentsXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlDocument(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentGlossaryXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentMainXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlEndnotesXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlFonttableXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlFooterXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlFootnotesXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlNumberingXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlSettingsXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlStylesXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlTemplate(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlTemplateMainXml(),
                vndOpenxmlformatsOfficedocumentWordprocessingmlWebsettingsXml(),
                vndOpenxmlformatsPackageCorePropertiesXml(),
                vndOpenxmlformatsPackageDigitalSignatureXmlsignatureXml(),
                vndOpenxmlformatsPackageRelationshipsXml(),
                vndOracleResourceJson(),
                vndOrangeIndata(),
                vndOsaNetdeploy(),
                vndOsgeoMapguidePackage(),
                vndOsgiBundle(),
                vndOsgiDp(),
                vndOsgiSubsystem(),
                vndOtpsCtKipXml(),
                vndOxliCountgraph(),
                vndPagerdutyJson(),
                vndPalm(),
                vndPanoply(),
                vndPaosXml(),
                vndPatentdive(),
                vndPatientecommsdoc(),
                vndPawaafile(),
                vndPcos(),
                vndPgFormat(),
                vndPgOsasli(),
                vndPiaccessApplicationLicence(),
                vndPicsel(),
                vndPmiWidget(),
                vndPmtiles(),
                vndPocGroupAdvertisementXml(),
                vndPocketlearn(),
                vndPowerbuilder6(),
                vndPowerbuilder6S(),
                vndPowerbuilder7(),
                vndPowerbuilder7S(),
                vndPowerbuilder75(),
                vndPowerbuilder75S(),
                vndPpSystemverifyXml(),
                vndPreminet(),
                vndPreviewsystemsBox(),
                vndProcreateBrush(),
                vndProcreateBrushset(),
                vndProcreateDream(),
                vndProjectGraph(),
                vndProteusMagazine(),
                vndPsfs(),
                vndPtMundusmundi(),
                vndPublishareDeltaTree(),
                vndPviPtid1(),
                vndPwgMultiplexed(),
                vndPwgXhtmlPrintXml(),
                vndPyonJson(),
                vndQualcommBrewAppRes(),
                vndQuarantainenet(),
                vndQuarkQuarkxpress(),
                vndQuobjectQuoxdocument(),
                vndR74nSandboxelsJson(),
                vndRadisysMomlXml(),
                vndRadisysMsmlXml(),
                vndRadisysMsmlAuditXml(),
                vndRadisysMsmlAuditConfXml(),
                vndRadisysMsmlAuditConnXml(),
                vndRadisysMsmlAuditDialogXml(),
                vndRadisysMsmlAuditStreamXml(),
                vndRadisysMsmlConfXml(),
                vndRadisysMsmlDialogXml(),
                vndRadisysMsmlDialogBaseXml(),
                vndRadisysMsmlDialogFaxDetectXml(),
                vndRadisysMsmlDialogFaxSendrecvXml(),
                vndRadisysMsmlDialogGroupXml(),
                vndRadisysMsmlDialogSpeechXml(),
                vndRadisysMsmlDialogTransformXml(),
                vndRainstorData(),
                vndRapid(),
                vndRar(),
                vndRealvncBed(),
                vndRecordareMusicxml(),
                vndRecordareMusicxmlXml(),
                vndRelpipe(),
                vndRenlearnRlprint(),
                vndResilientLogic(),
                vndRestfulJson(),
                vndRigCryptonote(),
                vndRimCod(),
                vndRnRealmedia(),
                vndRnRealmediaVbr(),
                vndRoute66Link66Xml(),
                vndRs274x(),
                vndRuckusDownload(),
                vndS3sms(),
                vndSailingtrackerTrack(),
                vndSar(),
                vndSbmCid(),
                vndSbmMid2(),
                vndScribus(),
                vndSealed3df(),
                vndSealedCsf(),
                vndSealedDoc(),
                vndSealedEml(),
                vndSealedMht(),
                vndSealedNet(),
                vndSealedPpt(),
                vndSealedTiff(),
                vndSealedXls(),
                vndSealedmediaSoftsealHtml(),
                vndSealedmediaSoftsealPdf(),
                vndSeemail(),
                vndSeisJson(),
                vndSema(),
                vndSemd(),
                vndSemf(),
                vndShadeSaveFile(),
                vndShanaInformedFormdata(),
                vndShanaInformedFormtemplate(),
                vndShanaInformedInterchange(),
                vndShanaInformedPackage(),
                vndShootproofJson(),
                vndShopkickJson(),
                vndShp(),
                vndShx(),
                vndSigrokSession(),
                vndSimtechMindmapper(),
                vndSirenJson(),
                vndSirtxVmv0(),
                vndSketchometry(),
                vndSmaf(),
                vndSmartNotebook(),
                vndSmartTeacher(),
                vndSmintioPortalsArchive(),
                vndSnesdevPageTable(),
                vndSoftware602FillerFormXml(),
                vndSoftware602FillerFormXmlZip(),
                vndSolentSdkmXml(),
                vndSpotfireDxp(),
                vndSpotfireSfs(),
                vndSqlite3(),
                vndSssCod(),
                vndSssDtf(),
                vndSssNtf(),
                vndStardivisionCalc(),
                vndStardivisionDraw(),
                vndStardivisionImpress(),
                vndStardivisionMath(),
                vndStardivisionWriter(),
                vndStardivisionWriterGlobal(),
                vndStepmaniaPackage(),
                vndStepmaniaStepchart(),
                vndStreetStream(),
                vndSunWadlXml(),
                vndSunXmlCalc(),
                vndSunXmlCalcTemplate(),
                vndSunXmlDraw(),
                vndSunXmlDrawTemplate(),
                vndSunXmlImpress(),
                vndSunXmlImpressTemplate(),
                vndSunXmlMath(),
                vndSunXmlWriter(),
                vndSunXmlWriterGlobal(),
                vndSunXmlWriterTemplate(),
                vndSuperfileSuper(),
                vndSusCalendar(),
                vndSvd(),
                vndSwiftviewIcs(),
                vndSybylMol2(),
                vndSycleXml(),
                vndSyftJson(),
                vndSymbianInstall(),
                vndSyncmlXml(),
                vndSyncmlDmWbxml(),
                vndSyncmlDmXml(),
                vndSyncmlDmNotification(),
                vndSyncmlDmddfWbxml(),
                vndSyncmlDmddfXml(),
                vndSyncmlDmtndsWbxml(),
                vndSyncmlDmtndsXml(),
                vndSyncmlDsNotification(),
                vndTableschemaJson(),
                vndTaoIntentModuleArchive(),
                vndTcpdumpPcap(),
                vndThinkCellPpttcJson(),
                vndTmdMediaflexApiXml(),
                vndTml(),
                vndTmobileLivetv(),
                vndTriOnesource(),
                vndTridTpt(),
                vndTriscapeMxs(),
                vndTrueapp(),
                vndTruedoc(),
                vndUbisoftWebplayer(),
                vndUfdl(),
                vndUicOsdmJson(),
                vndUiqTheme(),
                vndUmajin(),
                vndUnity(),
                vndUomlXml(),
                vndUplanetAlert(),
                vndUplanetAlertWbxml(),
                vndUplanetBearerChoice(),
                vndUplanetBearerChoiceWbxml(),
                vndUplanetCacheop(),
                vndUplanetCacheopWbxml(),
                vndUplanetChannel(),
                vndUplanetChannelWbxml(),
                vndUplanetList(),
                vndUplanetListWbxml(),
                vndUplanetListcmd(),
                vndUplanetListcmdWbxml(),
                vndUplanetSignal(),
                vndUriMap(),
                vndValveSourceMaterial(),
                vndVcx(),
                vndVdStudy(),
                vndVectorworks(),
                vndVelJson(),
                vndVeraisonTsmReportCbor(),
                vndVeraisonTsmReportJson(),
                vndVerifierAttestationJwt(),
                vndVerimatrixVcas(),
                vndVeritoneAionJson(),
                vndVeryantThin(),
                vndVesEncrypted(),
                vndVidsoftVidconference(),
                vndVisio(),
                vndVisionary(),
                vndVividenceScriptfile(),
                vndVocalshaperVsp4(),
                vndVsf(),
                vndVuq(),
                vndWantverse(),
                vndWapSic(),
                vndWapSlc(),
                vndWapWbxml(),
                vndWapWmlc(),
                vndWapWmlscriptc(),
                vndWasmflowWafl(),
                vndWebturbo(),
                vndWfaDpp(),
                vndWfaP2p(),
                vndWfaWsc(),
                vndWindowsDevicepairing(),
                vndWmap(),
                vndWmc(),
                vndWmfBootstrap(),
                vndWolframMathematica(),
                vndWolframMathematicaPackage(),
                vndWolframPlayer(),
                vndWordlift(),
                vndWordperfect(),
                vndWqd(),
                vndWrqHp3000Labelled(),
                vndWtStf(),
                vndWvCspWbxml(),
                vndWvCspXml(),
                vndWvSspXml(),
                vndXacmlJson(),
                vndXara(),
                vndXarinCpj(),
                vndXecretsEncrypted(),
                vndXfdl(),
                vndXfdlWebform(),
                vndXmiXml(),
                vndXmpieCpkg(),
                vndXmpieDpkg(),
                vndXmpiePlan(),
                vndXmpiePpkg(),
                vndXmpieXlim(),
                vndYamahaHvDic(),
                vndYamahaHvScript(),
                vndYamahaHvVoice(),
                vndYamahaOpenscoreformat(),
                vndYamahaOpenscoreformatOsfpvgXml(),
                vndYamahaRemoteSetup(),
                vndYamahaSmafAudio(),
                vndYamahaSmafPhrase(),
                vndYamahaThroughNgn(),
                vndYamahaTunnelUdpencap(),
                vndYaoweme(),
                vndYellowriverCustomMenu(),
                vndZul(),
                vndZzazzDeckXml(),
                voicexmlXml(),
                voucherCmsJson(),
                voucherJwsJson(),
                vp(),
                vpCose(),
                vpJwt(),
                vqRtcpxr(),
                wasm(),
                watcherinfoXml(),
                webpushOptionsJson(),
                whoisppQuery(),
                whoisppResponse(),
                widget(),
                winhlp(),
                wita(),
                wordperfect51(),
                wsdlXml(),
                wspolicyXml(),
                x7zCompressed(),
                xAbiword(),
                xAceCompressed(),
                xAmf(),
                xAppleDiskimage(),
                xArj(),
                xAuthorwareBin(),
                xAuthorwareMap(),
                xAuthorwareSeg(),
                xBcpio(),
                xBdoc(),
                xBittorrent(),
                xBlender(),
                xBlorb(),
                xBzip(),
                xBzip2(),
                xCbr(),
                xCdlink(),
                xCfsCompressed(),
                xChat(),
                xChessPgn(),
                xChromeExtension(),
                xCocoa(),
                xCompress(),
                xCompressed(),
                xConference(),
                xCpio(),
                xCsh(),
                xDeb(),
                xDebianPackage(),
                xDgcCompressed(),
                xDirector(),
                xDoom(),
                xDtbncxXml(),
                xDtbookXml(),
                xDtbresourceXml(),
                xDvi(),
                xEnvoy(),
                xEva(),
                xFontBdf(),
                xFontDos(),
                xFontFramemaker(),
                xFontGhostscript(),
                xFontLibgrx(),
                xFontLinuxPsf(),
                xFontPcf(),
                xFontSnf(),
                xFontSpeedo(),
                xFontSunosNews(),
                xFontType1(),
                xFontVfont(),
                xFreearc(),
                xFuturesplash(),
                xGcaCompressed(),
                xGlulx(),
                xGnumeric(),
                xGrampsXml(),
                xGtar(),
                xGzip(),
                xHdf(),
                xHttpdPhp(),
                xInstallInstructions(),
                xIpynbJson(),
                xIso9660Image(),
                xIworkKeynoteSffkey(),
                xIworkNumbersSffnumbers(),
                xIworkPagesSffpages(),
                xJavaArchiveDiff(),
                xJavaJnlpFile(),
                xJavascript(),
                xKeepass2(),
                xLatex(),
                xLuaBytecode(),
                xLzhCompressed(),
                xMakeself(),
                xMie(),
                xMobipocketEbook(),
                xMpegurl(),
                xMsApplication(),
                xMsShortcut(),
                xMsWmd(),
                xMsWmz(),
                xMsXbap(),
                xMsaccess(),
                xMsbinder(),
                xMscardfile(),
                xMsclip(),
                xMsdosProgram(),
                xMsdownload(),
                xMsmediaview(),
                xMsmetafile(),
                xMsmoney(),
                xMspublisher(),
                xMsschedule(),
                xMsterminal(),
                xMswrite(),
                xNetcdf(),
                xNsProxyAutoconfig(),
                xNzb(),
                xPerl(),
                xPilot(),
                xPkcs12(),
                xPkcs7Certificates(),
                xPkcs7Certreqresp(),
                xPkiMessage(),
                xRarCompressed(),
                xRedhatPackageManager(),
                xResearchInfoSystems(),
                xSea(),
                xSh(),
                xShar(),
                xShockwaveFlash(),
                xSilverlightApp(),
                xSql(),
                xStuffit(),
                xStuffitx(),
                xSubrip(),
                xSv4cpio(),
                xSv4crc(),
                xT3vmImage(),
                xTads(),
                xTar(),
                xTcl(),
                xTex(),
                xTexTfm(),
                xTexinfo(),
                xTgif(),
                xUstar(),
                xVirtualboxHdd(),
                xVirtualboxOva(),
                xVirtualboxOvf(),
                xVirtualboxVbox(),
                xVirtualboxVboxExtpack(),
                xVirtualboxVdi(),
                xVirtualboxVhd(),
                xVirtualboxVmdk(),
                xWaisSource(),
                xWebAppManifestJson(),
                xWwwFormUrlencoded(),
                xX509CaCert(),
                xX509CaRaCert(),
                xX509NextCaCert(),
                xXfig(),
                xXliffXml(),
                xXpinstall(),
                xXz(),
                xZipCompressed(),
                xZmachine(),
                x400Bp(),
                xacmlXml(),
                xamlXml(),
                xcapAttXml(),
                xcapCapsXml(),
                xcapDiffXml(),
                xcapElXml(),
                xcapErrorXml(),
                xcapNsXml(),
                xconConferenceInfoXml(),
                xconConferenceInfoDiffXml(),
                xencXml(),
                xfdf(),
                xhtmlXml(),
                xhtmlVoiceXml(),
                xliffXml(),
                xml(),
                xmlDtd(),
                xmlExternalParsedEntity(),
                xmlPatchXml(),
                xmppXml(),
                xopXml(),
                xprocXml(),
                xsltXml(),
                xspfXml(),
                xvXml(),
                yaml(),
                yang(),
                yangDataCbor(),
                yangDataJson(),
                yangDataXml(),
                yangPatchJson(),
                yangPatchXml(),
                yangSidJson(),
                yinXml(),
                zip(),
                zipDotlottie(),
                zlib(),
                zstd(),
            ]
        }

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec",
                source: .iana
            )
        }

        public static func _3gpdashQoeReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpdash-qoe-report",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func _3gppImsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-ims",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func _3gppMbsObjectManifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-mbs-object-manifest",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func _3gppMbsUserServiceDescriptionsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-mbs-user-service-descriptions",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func _3gppMediaDeliveryMetricsReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-media-delivery-metrics-report",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func _3gpphalJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpphal",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func _3gpphalformsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpphalforms",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func a2l() -> MediaType {
            .init(
                type: name,
                subtype: "a2l",
                source: .iana
            )
        }

        public static func aceCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func aceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func aceGroupcommCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace-groupcomm",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func aceTrlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace-trl",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func activemessage() -> MediaType {
            .init(
                type: name,
                subtype: "activemessage",
                source: .iana
            )
        }

        public static func activityJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "activity",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func aifCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "aif",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func aifJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "aif",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoCdniJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-cdni",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoCdnifilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-cdnifilter",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoCostmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-costmap",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoCostmapfilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-costmapfilter",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoDirectoryJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-directory",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoEndpointcostJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointcost",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoEndpointcostparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointcostparams",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoEndpointpropJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointprop",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoEndpointpropparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointpropparams",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoErrorJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-error",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoNetworkmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-networkmap",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoNetworkmapfilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-networkmapfilter",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoPropmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-propmap",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoPropmapparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-propmapparams",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoTipsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-tips",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoTipsparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-tipsparams",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoUpdatestreamcontrolJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-updatestreamcontrol",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func altoUpdatestreamparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-updatestreamparams",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func aml() -> MediaType {
            .init(
                type: name,
                subtype: "aml",
                source: .iana
            )
        }

        public static func andrewInset() -> MediaType {
            .init(
                type: name,
                subtype: "andrew-inset",
                possibleExtensions: [
                    "ez"
                ],
                source: .iana
            )
        }

        public static func appinstaller() -> MediaType {
            .init(
                type: name,
                subtype: "appinstaller",
                possibleExtensions: [
                    "appinstaller"
                ]
            )
        }

        public static func applefile() -> MediaType {
            .init(
                type: name,
                subtype: "applefile",
                source: .iana
            )
        }

        public static func applixware() -> MediaType {
            .init(
                type: name,
                subtype: "applixware",
                possibleExtensions: [
                    "aw"
                ],
                source: .apache
            )
        }

        public static func appx() -> MediaType {
            .init(
                type: name,
                subtype: "appx",
                possibleExtensions: [
                    "appx"
                ]
            )
        }

        public static func appxbundle() -> MediaType {
            .init(
                type: name,
                subtype: "appxbundle",
                possibleExtensions: [
                    "appxbundle"
                ]
            )
        }

        public static func asyncapiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "asyncapi",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func asyncapiYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "asyncapi",
                    suffix: "yaml"
                ),
                source: .iana
            )
        }

        public static func atJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "at",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func atf() -> MediaType {
            .init(
                type: name,
                subtype: "atf",
                source: .iana
            )
        }

        public static func atfx() -> MediaType {
            .init(
                type: name,
                subtype: "atfx",
                source: .iana
            )
        }

        public static func atomXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atom",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atom"
                ],
                source: .iana
            )
        }

        public static func atomcatXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomcat",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomcat"
                ],
                source: .iana
            )
        }

        public static func atomdeletedXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomdeleted",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomdeleted"
                ],
                source: .iana
            )
        }

        public static func atomicmail() -> MediaType {
            .init(
                type: name,
                subtype: "atomicmail",
                source: .iana
            )
        }

        public static func atomsvcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomsvc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomsvc"
                ],
                source: .iana
            )
        }

        public static func atscDwdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-dwd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dwd"
                ],
                source: .iana
            )
        }

        public static func atscDynamicEventMessage() -> MediaType {
            .init(
                type: name,
                subtype: "atsc-dynamic-event-message",
                source: .iana
            )
        }

        public static func atscHeldXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-held",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "held"
                ],
                source: .iana
            )
        }

        public static func atscRdtJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-rdt",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func atscRsatXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-rsat",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rsat"
                ],
                source: .iana
            )
        }

        public static func atxml() -> MediaType {
            .init(
                type: name,
                subtype: "atxml",
                source: .iana
            )
        }

        public static func authPolicyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "auth-policy",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func automationmlAmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "automationml-aml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "aml"
                ],
                source: .iana
            )
        }

        public static func automationmlAmlxZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "automationml-amlx",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "amlx"
                ],
                source: .iana
            )
        }

        public static func bacnetXddZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "bacnet-xdd",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func batchSmtp() -> MediaType {
            .init(
                type: name,
                subtype: "batch-smtp",
                source: .iana
            )
        }

        public static func bdoc() -> MediaType {
            .init(
                type: name,
                subtype: "bdoc",
                possibleExtensions: [
                    "bdoc"
                ]
            )
        }

        public static func beepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "beep",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func bufr() -> MediaType {
            .init(
                type: name,
                subtype: "bufr",
                source: .iana
            )
        }

        public static func c2pa() -> MediaType {
            .init(
                type: name,
                subtype: "c2pa",
                source: .iana
            )
        }

        public static func calendarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "calendar",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func calendarXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "calendar",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xcs"
                ],
                source: .iana
            )
        }

        public static func callCompletion() -> MediaType {
            .init(
                type: name,
                subtype: "call-completion",
                source: .iana
            )
        }

        public static func cals1840() -> MediaType {
            .init(
                type: name,
                subtype: "cals-1840",
                source: .iana
            )
        }

        public static func captiveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "captive",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func cbor() -> MediaType {
            .init(
                type: name,
                subtype: "cbor",
                source: .iana
            )
        }

        public static func cborSeq() -> MediaType {
            .init(
                type: name,
                subtype: "cbor-seq",
                source: .iana
            )
        }

        public static func cccex() -> MediaType {
            .init(
                type: name,
                subtype: "cccex",
                source: .iana
            )
        }

        public static func ccmpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ccmp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func ccxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ccxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ccxml"
                ],
                source: .iana
            )
        }

        public static func cdaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cda",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cdfxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cdfx",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cdfx"
                ],
                source: .iana
            )
        }

        public static func cdmiCapability() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-capability",
                possibleExtensions: [
                    "cdmia"
                ],
                source: .iana
            )
        }

        public static func cdmiContainer() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-container",
                possibleExtensions: [
                    "cdmic"
                ],
                source: .iana
            )
        }

        public static func cdmiDomain() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-domain",
                possibleExtensions: [
                    "cdmid"
                ],
                source: .iana
            )
        }

        public static func cdmiObject() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-object",
                possibleExtensions: [
                    "cdmio"
                ],
                source: .iana
            )
        }

        public static func cdmiQueue() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-queue",
                possibleExtensions: [
                    "cdmiq"
                ],
                source: .iana
            )
        }

        public static func cdni() -> MediaType {
            .init(
                type: name,
                subtype: "cdni",
                source: .iana
            )
        }

        public static func ceCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ce",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func cea() -> MediaType {
            .init(
                type: name,
                subtype: "cea",
                source: .iana
            )
        }

        public static func cea2018Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cea-2018",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cellmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cellml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cfw() -> MediaType {
            .init(
                type: name,
                subtype: "cfw",
                source: .iana
            )
        }

        public static func cid() -> MediaType {
            .init(
                type: name,
                subtype: "cid",
                source: .iana
            )
        }

        public static func cidEdhocCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cid-edhoc",
                    suffix: "cbor-seq"
                ),
                source: .iana
            )
        }

        public static func cityJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "city",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func cityJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "city",
                    suffix: "json-seq"
                ),
                source: .iana
            )
        }

        public static func clr() -> MediaType {
            .init(
                type: name,
                subtype: "clr",
                source: .iana
            )
        }

        public static func clueXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "clue",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func clueInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "clue_info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cms() -> MediaType {
            .init(
                type: name,
                subtype: "cms",
                source: .iana
            )
        }

        public static func cnrpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cnrp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func coapEap() -> MediaType {
            .init(
                type: name,
                subtype: "coap-eap",
                source: .iana
            )
        }

        public static func coapGroupJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "coap-group",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func coapPayload() -> MediaType {
            .init(
                type: name,
                subtype: "coap-payload",
                source: .iana
            )
        }

        public static func commonground() -> MediaType {
            .init(
                type: name,
                subtype: "commonground",
                source: .iana
            )
        }

        public static func conciseProblemDetailsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "concise-problem-details",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func conferenceInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "conference-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cose() -> MediaType {
            .init(
                type: name,
                subtype: "cose",
                source: .iana
            )
        }

        public static func coseKey() -> MediaType {
            .init(
                type: name,
                subtype: "cose-key",
                source: .iana
            )
        }

        public static func coseKeySet() -> MediaType {
            .init(
                type: name,
                subtype: "cose-key-set",
                source: .iana
            )
        }

        public static func coseX509() -> MediaType {
            .init(
                type: name,
                subtype: "cose-x509",
                source: .iana
            )
        }

        public static func cplXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cpl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cpl"
                ],
                source: .iana
            )
        }

        public static func csrattrs() -> MediaType {
            .init(
                type: name,
                subtype: "csrattrs",
                source: .iana
            )
        }

        public static func cstaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "csta",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func cstadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cstadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func csvmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "csvm",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func cuSeeme() -> MediaType {
            .init(
                type: name,
                subtype: "cu-seeme",
                possibleExtensions: [
                    "cu"
                ],
                source: .apache
            )
        }

        public static func cwl() -> MediaType {
            .init(
                type: name,
                subtype: "cwl",
                possibleExtensions: [
                    "cwl"
                ],
                source: .iana
            )
        }

        public static func cwlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cwl",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func cwlYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cwl",
                    suffix: "yaml"
                ),
                source: .iana
            )
        }

        public static func cwt() -> MediaType {
            .init(
                type: name,
                subtype: "cwt",
                source: .iana
            )
        }

        public static func cybercash() -> MediaType {
            .init(
                type: name,
                subtype: "cybercash",
                source: .iana
            )
        }

        public static func dart() -> MediaType {
            .init(
                type: name,
                subtype: "dart"
            )
        }

        public static func dashXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dash",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpd"
                ],
                source: .iana
            )
        }

        public static func dashPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dash-patch",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpp"
                ],
                source: .iana
            )
        }

        public static func dashdelta() -> MediaType {
            .init(
                type: name,
                subtype: "dashdelta",
                source: .iana
            )
        }

        public static func davmountXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "davmount",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "davmount"
                ],
                source: .iana
            )
        }

        public static func dcaRft() -> MediaType {
            .init(
                type: name,
                subtype: "dca-rft",
                source: .iana
            )
        }

        public static func dcd() -> MediaType {
            .init(
                type: name,
                subtype: "dcd",
                source: .iana
            )
        }

        public static func decDx() -> MediaType {
            .init(
                type: name,
                subtype: "dec-dx",
                source: .iana
            )
        }

        public static func dialogInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dialog-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func dicom() -> MediaType {
            .init(
                type: name,
                subtype: "dicom",
                possibleExtensions: [
                    "dcm"
                ],
                source: .iana
            )
        }

        public static func dicomJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dicom",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func dicomXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dicom",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func did() -> MediaType {
            .init(
                type: name,
                subtype: "did",
                source: .iana
            )
        }

        public static func dii() -> MediaType {
            .init(
                type: name,
                subtype: "dii",
                source: .iana
            )
        }

        public static func dit() -> MediaType {
            .init(
                type: name,
                subtype: "dit",
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

        public static func dnsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dns",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func dnsMessage() -> MediaType {
            .init(
                type: name,
                subtype: "dns-message",
                source: .iana
            )
        }

        public static func docbookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "docbook",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dbk"
                ],
                source: .apache
            )
        }

        public static func dotsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dots",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func dpopJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dpop",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func dskppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dskpp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func dsscDer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dssc",
                    suffix: "der"
                ),
                possibleExtensions: [
                    "dssc"
                ],
                source: .iana
            )
        }

        public static func dsscXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dssc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdssc"
                ],
                source: .iana
            )
        }

        public static func dvcs() -> MediaType {
            .init(
                type: name,
                subtype: "dvcs",
                source: .iana
            )
        }

        public static func eatCwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat",
                    suffix: "cwt"
                ),
                source: .iana
            )
        }

        public static func eatJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func eatBunCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-bun",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func eatBunJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-bun",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func eatUcsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-ucs",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func eatUcsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-ucs",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func ecmascript() -> MediaType {
            .init(
                type: name,
                subtype: "ecmascript",
                possibleExtensions: [
                    "ecma",
                    "es",
                ],
                source: .apache
            )
        }

        public static func edhocCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "edhoc",
                    suffix: "cbor-seq"
                ),
                source: .iana
            )
        }

        public static func ediConsent() -> MediaType {
            .init(
                type: name,
                subtype: "edi-consent",
                source: .iana
            )
        }

        public static func ediX12() -> MediaType {
            .init(
                type: name,
                subtype: "edi-x12",
                source: .iana
            )
        }

        public static func edifact() -> MediaType {
            .init(
                type: name,
                subtype: "edifact",
                source: .iana
            )
        }

        public static func efi() -> MediaType {
            .init(
                type: name,
                subtype: "efi",
                source: .iana
            )
        }

        public static func elmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "elm",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func elmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "elm",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataCapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.cap",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataCommentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.comment",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.control",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataDeviceinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.deviceinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataEcallMsd() -> MediaType {
            .init(
                type: name,
                subtype: "emergencycalldata.ecall.msd",
                source: .iana
            )
        }

        public static func emergencycalldataLegacyesnJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.legacyesn",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataProviderinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.providerinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataServiceinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.serviceinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataSubscriberinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.subscriberinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emergencycalldataVedsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.veds",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func emmaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emma",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "emma"
                ],
                source: .iana
            )
        }

        public static func emotionmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emotionml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "emotionml"
                ],
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

        public static func entityStatementJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "entity-statement",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func eppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "epp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func epubZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "epub",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "epub"
                ],
                source: .iana
            )
        }

        public static func eshop() -> MediaType {
            .init(
                type: name,
                subtype: "eshop",
                source: .iana
            )
        }

        public static func exi() -> MediaType {
            .init(
                type: name,
                subtype: "exi",
                possibleExtensions: [
                    "exi"
                ],
                source: .iana
            )
        }

        public static func expectCtReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "expect-ct-report",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func express() -> MediaType {
            .init(
                type: name,
                subtype: "express",
                possibleExtensions: [
                    "exp"
                ],
                source: .iana
            )
        }

        public static func fastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: "fastinfoset",
                source: .iana
            )
        }

        public static func fastsoap() -> MediaType {
            .init(
                type: name,
                subtype: "fastsoap",
                source: .iana
            )
        }

        public static func fdf() -> MediaType {
            .init(
                type: name,
                subtype: "fdf",
                possibleExtensions: [
                    "fdf"
                ],
                source: .iana
            )
        }

        public static func fdtXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fdt",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "fdt"
                ],
                source: .iana
            )
        }

        public static func fhirJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fhir",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func fhirXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fhir",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func fidoTrustedAppsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fido.trusted-apps",
                    suffix: "json"
                )
            )
        }

        public static func fits() -> MediaType {
            .init(
                type: name,
                subtype: "fits",
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

        public static func fontSfnt() -> MediaType {
            .init(
                type: name,
                subtype: "font-sfnt",
                source: .iana
            )
        }

        public static func fontTdpfr() -> MediaType {
            .init(
                type: name,
                subtype: "font-tdpfr",
                possibleExtensions: [
                    "pfr"
                ],
                source: .iana
            )
        }

        public static func fontWoff() -> MediaType {
            .init(
                type: name,
                subtype: "font-woff",
                source: .iana
            )
        }

        public static func frameworkAttributesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "framework-attributes",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func geoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geo",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "geojson"
                ],
                source: .iana
            )
        }

        public static func geoJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geo",
                    suffix: "json-seq"
                ),
                source: .iana
            )
        }

        public static func geofeedCsv() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geofeed",
                    suffix: "csv"
                ),
                source: .iana
            )
        }

        public static func geopackageSqlite3() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geopackage",
                    suffix: "sqlite3"
                ),
                source: .iana
            )
        }

        public static func geoposeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geopose",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func geoxacmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geoxacml",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func geoxacmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geoxacml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func gltfBuffer() -> MediaType {
            .init(
                type: name,
                subtype: "gltf-buffer",
                source: .iana
            )
        }

        public static func gmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "gml"
                ],
                source: .iana
            )
        }

        public static func gnapBindingJws() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-jws",
                source: .iana
            )
        }

        public static func gnapBindingJwsd() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-jwsd",
                source: .iana
            )
        }

        public static func gnapBindingRotationJws() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-rotation-jws",
                source: .iana
            )
        }

        public static func gnapBindingRotationJwsd() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-rotation-jwsd",
                source: .iana
            )
        }

        public static func gpxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gpx",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "gpx"
                ],
                source: .apache
            )
        }

        public static func grib() -> MediaType {
            .init(
                type: name,
                subtype: "grib",
                source: .iana
            )
        }

        public static func gxf() -> MediaType {
            .init(
                type: name,
                subtype: "gxf",
                possibleExtensions: [
                    "gxf"
                ],
                source: .apache
            )
        }

        public static func gzip() -> MediaType {
            .init(
                type: name,
                subtype: "gzip",
                possibleExtensions: [
                    "gz"
                ],
                source: .iana
            )
        }

        public static func h224() -> MediaType {
            .init(
                type: name,
                subtype: "h224",
                source: .iana
            )
        }

        public static func heldXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "held",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func hjson() -> MediaType {
            .init(
                type: name,
                subtype: "hjson",
                possibleExtensions: [
                    "hjson"
                ]
            )
        }

        public static func hl7v2Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "hl7v2",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func http() -> MediaType {
            .init(
                type: name,
                subtype: "http",
                source: .iana
            )
        }

        public static func hyperstudio() -> MediaType {
            .init(
                type: name,
                subtype: "hyperstudio",
                possibleExtensions: [
                    "stk"
                ],
                source: .iana
            )
        }

        public static func ibeKeyRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ibe-key-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func ibePkgReplyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ibe-pkg-reply",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func ibePpData() -> MediaType {
            .init(
                type: name,
                subtype: "ibe-pp-data",
                source: .iana
            )
        }

        public static func iges() -> MediaType {
            .init(
                type: name,
                subtype: "iges",
                source: .iana
            )
        }

        public static func imIscomposingXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "im-iscomposing",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func index() -> MediaType {
            .init(
                type: name,
                subtype: "index",
                source: .iana
            )
        }

        public static func indexCmd() -> MediaType {
            .init(
                type: name,
                subtype: "index.cmd",
                source: .iana
            )
        }

        public static func indexObj() -> MediaType {
            .init(
                type: name,
                subtype: "index.obj",
                source: .iana
            )
        }

        public static func indexResponse() -> MediaType {
            .init(
                type: name,
                subtype: "index.response",
                source: .iana
            )
        }

        public static func indexVnd() -> MediaType {
            .init(
                type: name,
                subtype: "index.vnd",
                source: .iana
            )
        }

        public static func inkmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "inkml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ink",
                    "inkml",
                ],
                source: .iana
            )
        }

        public static func iotp() -> MediaType {
            .init(
                type: name,
                subtype: "iotp",
                source: .iana
            )
        }

        public static func ipfix() -> MediaType {
            .init(
                type: name,
                subtype: "ipfix",
                possibleExtensions: [
                    "ipfix"
                ],
                source: .iana
            )
        }

        public static func ipp() -> MediaType {
            .init(
                type: name,
                subtype: "ipp",
                source: .iana
            )
        }

        public static func isup() -> MediaType {
            .init(
                type: name,
                subtype: "isup",
                source: .iana
            )
        }

        public static func itsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "its",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "its"
                ],
                source: .iana
            )
        }

        public static func javaArchive() -> MediaType {
            .init(
                type: name,
                subtype: "java-archive",
                possibleExtensions: [
                    "jar",
                    "war",
                    "ear",
                ],
                source: .iana
            )
        }

        public static func javaSerializedObject() -> MediaType {
            .init(
                type: name,
                subtype: "java-serialized-object",
                possibleExtensions: [
                    "ser"
                ],
                source: .apache
            )
        }

        public static func javaVm() -> MediaType {
            .init(
                type: name,
                subtype: "java-vm",
                possibleExtensions: [
                    "class"
                ],
                source: .apache
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
                source: .apache
            )
        }

        public static func jf2feedJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jf2feed",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jose() -> MediaType {
            .init(
                type: name,
                subtype: "jose",
                source: .iana
            )
        }

        public static func joseJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jose",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jrdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jrd",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jscalendarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jscalendar",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jscontactJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jscontact",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func json() -> MediaType {
            .init(
                type: name,
                subtype: "json",
                possibleExtensions: [
                    "json",
                    "map",
                ],
                source: .iana
            )
        }

        public static func jsonPatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "json-patch",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jsonPatchQueryJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "json-patch-query",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: "json-seq",
                source: .iana
            )
        }

        public static func json5() -> MediaType {
            .init(
                type: name,
                subtype: "json5",
                possibleExtensions: [
                    "json5"
                ]
            )
        }

        public static func jsonmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jsonml",
                    suffix: "json",
                ),
                possibleExtensions: [
                    "jsonml"
                ],
                source: .apache
            )
        }

        public static func jsonpath() -> MediaType {
            .init(
                type: name,
                subtype: "jsonpath",
                source: .iana
            )
        }

        public static func jwkJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jwkSetJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk-set",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func jwkSetJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk-set",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func jwt() -> MediaType {
            .init(
                type: name,
                subtype: "jwt",
                source: .iana
            )
        }

        public static func kbJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kb",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func kblXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kbl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "kbl"
                ],
                source: .iana
            )
        }

        public static func kpmlRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kpml-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func kpmlResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kpml-response",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func ldJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ld",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "jsonld"
                ],
                source: .iana
            )
        }

        public static func lgrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lgr",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lgr"
                ],
                source: .iana
            )
        }

        public static func linkFormat() -> MediaType {
            .init(
                type: name,
                subtype: "link-format",
                source: .iana
            )
        }

        public static func linkset() -> MediaType {
            .init(
                type: name,
                subtype: "linkset",
                source: .iana
            )
        }

        public static func linksetJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "linkset",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func loadControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "load-control",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func logoutJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "logout",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func lostXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lost",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lostxml"
                ],
                source: .iana
            )
        }

        public static func lostsyncXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lostsync",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func lpfZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lpf",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func lxf() -> MediaType {
            .init(
                type: name,
                subtype: "lxf",
                source: .iana
            )
        }

        public static func macBinhex40() -> MediaType {
            .init(
                type: name,
                subtype: "mac-binhex40",
                possibleExtensions: [
                    "hqx"
                ],
                source: .iana
            )
        }

        public static func macCompactpro() -> MediaType {
            .init(
                type: name,
                subtype: "mac-compactpro",
                possibleExtensions: [
                    "cpt"
                ],
                source: .apache
            )
        }

        public static func macwriteii() -> MediaType {
            .init(
                type: name,
                subtype: "macwriteii",
                source: .iana
            )
        }

        public static func madsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mads",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mads"
                ],
                source: .iana
            )
        }

        public static func manifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "manifest",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "webmanifest"
                ],
                source: .iana
            )
        }

        public static func marc() -> MediaType {
            .init(
                type: name,
                subtype: "marc",
                possibleExtensions: [
                    "mrc"
                ],
                source: .iana
            )
        }

        public static func marcxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "marcxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mrcx"
                ],
                source: .iana
            )
        }

        public static func mathematica() -> MediaType {
            .init(
                type: name,
                subtype: "mathematica",
                possibleExtensions: [
                    "ma",
                    "nb",
                    "mb",
                ],
                source: .iana
            )
        }

        public static func mathmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mathml"
                ],
                source: .iana
            )
        }

        public static func mathmlContentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml-content",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mathmlPresentationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml-presentation",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsAssociatedProcedureDescriptionXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-associated-procedure-description",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsDeregisterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-deregister",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsEnvelopeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-envelope",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsMskXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-msk",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsMskResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-msk-response",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsProtectionDescriptionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-protection-description",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsReceptionReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-reception-report",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsRegisterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-register",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsRegisterResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-register-response",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsScheduleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-schedule",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbmsUserServiceDescriptionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-user-service-description",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mbox() -> MediaType {
            .init(
                type: name,
                subtype: "mbox",
                possibleExtensions: [
                    "mbox"
                ],
                source: .iana
            )
        }

        public static func mediaPolicyDatasetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "media-policy-dataset",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpf"
                ],
                source: .iana
            )
        }

        public static func mediaControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "media_control",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mediaservercontrolXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mediaservercontrol",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mscml"
                ],
                source: .iana
            )
        }

        public static func mergePatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "merge-patch",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func metalinkXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "metalink",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "metalink"
                ],
                source: .apache
            )
        }

        public static func metalink4Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "metalink4",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "meta4"
                ],
                source: .iana
            )
        }

        public static func metsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mets",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mets"
                ],
                source: .iana
            )
        }

        public static func mf4() -> MediaType {
            .init(
                type: name,
                subtype: "mf4",
                source: .iana
            )
        }

        public static func mikey() -> MediaType {
            .init(
                type: name,
                subtype: "mikey",
                source: .iana
            )
        }

        public static func mipc() -> MediaType {
            .init(
                type: name,
                subtype: "mipc",
                source: .iana
            )
        }

        public static func missingBlocksCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "missing-blocks",
                    suffix: "cbor-seq"
                ),
                source: .iana
            )
        }

        public static func mmtAeiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mmt-aei",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "maei"
                ],
                source: .iana
            )
        }

        public static func mmtUsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mmt-usd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "musd"
                ],
                source: .iana
            )
        }

        public static func modsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mods",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mods"
                ],
                source: .iana
            )
        }

        public static func mossKeys() -> MediaType {
            .init(
                type: name,
                subtype: "moss-keys",
                source: .iana
            )
        }

        public static func mossSignature() -> MediaType {
            .init(
                type: name,
                subtype: "moss-signature",
                source: .iana
            )
        }

        public static func mosskeyData() -> MediaType {
            .init(
                type: name,
                subtype: "mosskey-data",
                source: .iana
            )
        }

        public static func mosskeyRequest() -> MediaType {
            .init(
                type: name,
                subtype: "mosskey-request",
                source: .iana
            )
        }

        public static func mp21() -> MediaType {
            .init(
                type: name,
                subtype: "mp21",
                possibleExtensions: [
                    "m21",
                    "mp21",
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
                    "mpg4",
                    "mp4s",
                    "m4p",
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

        public static func mpeg4Iod() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-iod",
                source: .iana
            )
        }

        public static func mpeg4IodXmt() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-iod-xmt",
                source: .iana
            )
        }

        public static func mrbConsumerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mrb-consumer",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mrbPublishXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mrb-publish",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mscIvrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "msc-ivr",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func mscMixerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "msc-mixer",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func msix() -> MediaType {
            .init(
                type: name,
                subtype: "msix",
                possibleExtensions: [
                    "msix"
                ]
            )
        }

        public static func msixbundle() -> MediaType {
            .init(
                type: name,
                subtype: "msixbundle",
                possibleExtensions: [
                    "msixbundle"
                ]
            )
        }

        public static func msword() -> MediaType {
            .init(
                type: name,
                subtype: "msword",
                possibleExtensions: [
                    "doc",
                    "dot",
                ],
                source: .iana
            )
        }

        public static func mudJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mud",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func multipartCore() -> MediaType {
            .init(
                type: name,
                subtype: "multipart-core",
                source: .iana
            )
        }

        public static func mxf() -> MediaType {
            .init(
                type: name,
                subtype: "mxf",
                possibleExtensions: [
                    "mxf"
                ],
                source: .iana
            )
        }

        public static func nQuads() -> MediaType {
            .init(
                type: name,
                subtype: "n-quads",
                possibleExtensions: [
                    "nq"
                ],
                source: .iana
            )
        }

        public static func nTriples() -> MediaType {
            .init(
                type: name,
                subtype: "n-triples",
                possibleExtensions: [
                    "nt"
                ],
                source: .iana
            )
        }

        public static func nasdata() -> MediaType {
            .init(
                type: name,
                subtype: "nasdata",
                source: .iana
            )
        }

        public static func newsCheckgroups() -> MediaType {
            .init(
                type: name,
                subtype: "news-checkgroups",
                source: .iana
            )
        }

        public static func newsGroupinfo() -> MediaType {
            .init(
                type: name,
                subtype: "news-groupinfo",
                source: .iana
            )
        }

        public static func newsTransmission() -> MediaType {
            .init(
                type: name,
                subtype: "news-transmission",
                source: .iana
            )
        }

        public static func nlsmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "nlsml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func node() -> MediaType {
            .init(
                type: name,
                subtype: "node",
                possibleExtensions: [
                    "cjs"
                ],
                source: .iana
            )
        }

        public static func nss() -> MediaType {
            .init(
                type: name,
                subtype: "nss",
                source: .iana
            )
        }

        public static func oauthAuthzReqJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "oauth-authz-req",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func obliviousDnsMessage() -> MediaType {
            .init(
                type: name,
                subtype: "oblivious-dns-message",
                source: .iana
            )
        }

        public static func ocspRequest() -> MediaType {
            .init(
                type: name,
                subtype: "ocsp-request",
                source: .iana
            )
        }

        public static func ocspResponse() -> MediaType {
            .init(
                type: name,
                subtype: "ocsp-response",
                source: .iana
            )
        }

        public static func octetStream() -> MediaType {
            .init(
                type: name,
                subtype: "octet-stream",
                possibleExtensions: [
                    "bin",
                    "dms",
                    "lrf",
                    "mar",
                    "so",
                    "dist",
                    "distz",
                    "pkg",
                    "bpk",
                    "dump",
                    "elc",
                    "deploy",
                    "exe",
                    "dll",
                    "deb",
                    "dmg",
                    "iso",
                    "img",
                    "msi",
                    "msp",
                    "msm",
                    "buffer",
                ],
                source: .iana
            )
        }

        public static func oda() -> MediaType {
            .init(
                type: name,
                subtype: "oda",
                possibleExtensions: [
                    "oda"
                ],
                source: .iana
            )
        }

        public static func odmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "odm",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func odx() -> MediaType {
            .init(
                type: name,
                subtype: "odx",
                source: .iana
            )
        }

        public static func oebpsPackageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "oebps-package",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "opf"
                ],
                source: .iana
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "ogx"
                ],
                source: .iana
            )
        }

        public static func ohttpKeys() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-keys",
                source: .iana
            )
        }

        public static func omdocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "omdoc",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "omdoc"
                ],
                source: .apache
            )
        }

        public static func onenote() -> MediaType {
            .init(
                type: name,
                subtype: "onenote",
                possibleExtensions: [
                    "onetoc",
                    "onetoc2",
                    "onetmp",
                    "onepkg",
                    "one",
                    "onea",
                ],
                source: .apache
            )
        }

        public static func opcNodesetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "opc-nodeset",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func oscore() -> MediaType {
            .init(
                type: name,
                subtype: "oscore",
                source: .iana
            )
        }

        public static func oxps() -> MediaType {
            .init(
                type: name,
                subtype: "oxps",
                possibleExtensions: [
                    "oxps"
                ],
                source: .iana
            )
        }

        public static func p21() -> MediaType {
            .init(
                type: name,
                subtype: "p21",
                source: .iana
            )
        }

        public static func p21Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "p21",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func p2pOverlayXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "p2p-overlay",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "relo"
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

        public static func passport() -> MediaType {
            .init(
                type: name,
                subtype: "passport",
                source: .iana
            )
        }

        public static func patchOpsErrorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "patch-ops-error",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xer"
                ],
                source: .iana
            )
        }

        public static func pdf() -> MediaType {
            .init(
                type: name,
                subtype: "pdf",
                possibleExtensions: [
                    "pdf"
                ],
                source: .iana
            )
        }

        public static func pdx() -> MediaType {
            .init(
                type: name,
                subtype: "pdx",
                source: .iana
            )
        }

        public static func pemCertificateChain() -> MediaType {
            .init(
                type: name,
                subtype: "pem-certificate-chain",
                source: .iana
            )
        }

        public static func pgpEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-encrypted",
                possibleExtensions: [
                    "pgp"
                ],
                source: .iana
            )
        }

        public static func pgpKeys() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-keys",
                possibleExtensions: [
                    "asc"
                ],
                source: .iana
            )
        }

        public static func pgpSignature() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-signature",
                possibleExtensions: [
                    "sig",
                    "asc",
                ],
                source: .iana
            )
        }

        public static func picsRules() -> MediaType {
            .init(
                type: name,
                subtype: "pics-rules",
                possibleExtensions: [
                    "prf"
                ],
                source: .apache
            )
        }

        public static func pidfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pidf",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func pidfDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pidf-diff",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func pkcs10() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs10",
                possibleExtensions: [
                    "p10"
                ],
                source: .iana
            )
        }

        public static func pkcs12() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs12",
                source: .iana
            )
        }

        public static func pkcs7Mime() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs7-mime",
                possibleExtensions: [
                    "p7m",
                    "p7c",
                ],
                source: .iana
            )
        }

        public static func pkcs7Signature() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs7-signature",
                possibleExtensions: [
                    "p7s"
                ],
                source: .iana
            )
        }

        public static func pkcs8() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs8",
                possibleExtensions: [
                    "p8"
                ],
                source: .iana
            )
        }

        public static func pkcs8Encrypted() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs8-encrypted",
                source: .iana
            )
        }

        public static func pkixAttrCert() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-attr-cert",
                possibleExtensions: [
                    "ac"
                ],
                source: .iana
            )
        }

        public static func pkixCert() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-cert",
                possibleExtensions: [
                    "cer"
                ],
                source: .iana
            )
        }

        public static func pkixCrl() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-crl",
                possibleExtensions: [
                    "crl"
                ],
                source: .iana
            )
        }

        public static func pkixPkipath() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-pkipath",
                possibleExtensions: [
                    "pkipath"
                ],
                source: .iana
            )
        }

        public static func pkixcmp() -> MediaType {
            .init(
                type: name,
                subtype: "pkixcmp",
                possibleExtensions: [
                    "pki"
                ],
                source: .iana
            )
        }

        public static func plsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pls",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "pls"
                ],
                source: .iana
            )
        }

        public static func pocSettingsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "poc-settings",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func postscript() -> MediaType {
            .init(
                type: name,
                subtype: "postscript",
                possibleExtensions: [
                    "ai",
                    "eps",
                    "ps",
                ],
                source: .iana
            )
        }

        public static func ppspTrackerJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ppsp-tracker",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func privateTokenIssuerDirectory() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-issuer-directory",
                source: .iana
            )
        }

        public static func privateTokenRequest() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-request",
                source: .iana
            )
        }

        public static func privateTokenResponse() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-response",
                source: .iana
            )
        }

        public static func problemJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "problem",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func problemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "problem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func protobuf() -> MediaType {
            .init(
                type: name,
                subtype: "protobuf",
                source: .iana
            )
        }

        public static func protobufJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "protobuf",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func provenanceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "provenance",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "provx"
                ],
                source: .iana
            )
        }

        public static func providedClaimsJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "provided-claims",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func prsAlvestrandTitraxSheet() -> MediaType {
            .init(
                type: name,
                subtype: "prs.alvestrand.titrax-sheet",
                source: .iana
            )
        }

        public static func prsCww() -> MediaType {
            .init(
                type: name,
                subtype: "prs.cww",
                possibleExtensions: [
                    "cww"
                ],
                source: .iana
            )
        }

        public static func prsCyn() -> MediaType {
            .init(
                type: name,
                subtype: "prs.cyn",
                source: .iana
            )
        }

        public static func prsHpubZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.hpub",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func prsImpliedDocumentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-document",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func prsImpliedExecutable() -> MediaType {
            .init(
                type: name,
                subtype: "prs.implied-executable",
                source: .iana
            )
        }

        public static func prsImpliedObjectJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func prsImpliedObjectJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "json-seq"
                ),
                source: .iana
            )
        }

        public static func prsImpliedObjectYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "yaml"
                ),
                source: .iana
            )
        }

        public static func prsImpliedStructure() -> MediaType {
            .init(
                type: name,
                subtype: "prs.implied-structure",
                source: .iana
            )
        }

        public static func prsMayfile() -> MediaType {
            .init(
                type: name,
                subtype: "prs.mayfile",
                source: .iana
            )
        }

        public static func prsNprend() -> MediaType {
            .init(
                type: name,
                subtype: "prs.nprend",
                source: .iana
            )
        }

        public static func prsPlucker() -> MediaType {
            .init(
                type: name,
                subtype: "prs.plucker",
                source: .iana
            )
        }

        public static func prsRdfXmlCrypt() -> MediaType {
            .init(
                type: name,
                subtype: "prs.rdf-xml-crypt",
                source: .iana
            )
        }

        public static func prsVcfbzip2() -> MediaType {
            .init(
                type: name,
                subtype: "prs.vcfbzip2",
                source: .iana
            )
        }

        public static func prsXsfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.xsf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsf"
                ],
                source: .iana
            )
        }

        public static func pskcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pskc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "pskcxml"
                ],
                source: .iana
            )
        }

        public static func pvdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pvd",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func qsig() -> MediaType {
            .init(
                type: name,
                subtype: "qsig",
                source: .iana
            )
        }

        public static func ramlYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "raml",
                    suffix: "yaml"
                ),
                possibleExtensions: [
                    "raml"
                ]
            )
        }

        public static func raptorfec() -> MediaType {
            .init(
                type: name,
                subtype: "raptorfec",
                source: .iana
            )
        }

        public static func rdapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rdap",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func rdfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rdf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rdf",
                    "owl",
                ],
                source: .iana
            )
        }

        public static func reginfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "reginfo",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rif"
                ],
                source: .iana
            )
        }

        public static func relaxNgCompactSyntax() -> MediaType {
            .init(
                type: name,
                subtype: "relax-ng-compact-syntax",
                possibleExtensions: [
                    "rnc"
                ],
                source: .iana
            )
        }

        public static func remotePrinting() -> MediaType {
            .init(
                type: name,
                subtype: "remote-printing",
                source: .apache
            )
        }

        public static func reputonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "reputon",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func resolveResponseJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resolve-response",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func resourceListsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resource-lists",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rl"
                ],
                source: .iana
            )
        }

        public static func resourceListsDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resource-lists-diff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rld"
                ],
                source: .iana
            )
        }

        public static func rfcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rfc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func riscos() -> MediaType {
            .init(
                type: name,
                subtype: "riscos",
                source: .iana
            )
        }

        public static func rlmiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rlmi",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func rlsServicesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rls-services",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rs"
                ],
                source: .iana
            )
        }

        public static func routeApdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-apd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rapd"
                ],
                source: .iana
            )
        }

        public static func routeSTsidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-s-tsid",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sls"
                ],
                source: .iana
            )
        }

        public static func routeUsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-usd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rusd"
                ],
                source: .iana
            )
        }

        public static func rpkiChecklist() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-checklist",
                source: .iana
            )
        }

        public static func rpkiGhostbusters() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-ghostbusters",
                possibleExtensions: [
                    "gbr"
                ],
                source: .iana
            )
        }

        public static func rpkiManifest() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-manifest",
                possibleExtensions: [
                    "mft"
                ],
                source: .iana
            )
        }

        public static func rpkiPublication() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-publication",
                source: .iana
            )
        }

        public static func rpkiRoa() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-roa",
                possibleExtensions: [
                    "roa"
                ],
                source: .iana
            )
        }

        public static func rpkiSignedTal() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-signed-tal",
                source: .iana
            )
        }

        public static func rpkiUpdown() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-updown",
                source: .iana
            )
        }

        public static func rsMetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rs-metadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func rsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rsd",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "rsd"
                ],
                source: .apache
            )
        }

        public static func rssXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rss",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "rss"
                ],
                source: .apache
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

        public static func samlassertionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "samlassertion",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func samlmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "samlmetadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func sarifJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sarif",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func sarifExternalPropertiesJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sarif-external-properties",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func sbe() -> MediaType {
            .init(
                type: name,
                subtype: "sbe",
                source: .iana
            )
        }

        public static func sbmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sbml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sbml"
                ],
                source: .iana
            )
        }

        public static func scaipXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scaip",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func scimJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scim",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func scittReceiptCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scitt-receipt",
                    suffix: "cose"
                ),
                source: .iana
            )
        }

        public static func scittStatementCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scitt-statement",
                    suffix: "cose"
                ),
                source: .iana
            )
        }

        public static func scvpCvRequest() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-cv-request",
                possibleExtensions: [
                    "scq"
                ],
                source: .iana
            )
        }

        public static func scvpCvResponse() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-cv-response",
                possibleExtensions: [
                    "scs"
                ],
                source: .iana
            )
        }

        public static func scvpVpRequest() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-vp-request",
                possibleExtensions: [
                    "spq"
                ],
                source: .iana
            )
        }

        public static func scvpVpResponse() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-vp-response",
                possibleExtensions: [
                    "spp"
                ],
                source: .iana
            )
        }

        public static func sdJwt() -> MediaType {
            .init(
                type: name,
                subtype: "sd-jwt",
                source: .iana
            )
        }

        public static func sdJwtJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sd-jwt",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func sdfJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sdf",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func sdp() -> MediaType {
            .init(
                type: name,
                subtype: "sdp",
                possibleExtensions: [
                    "sdp"
                ],
                source: .iana
            )
        }

        public static func seceventJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "secevent",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func senmlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func senmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func senmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "senmlx"
                ],
                source: .iana
            )
        }

        public static func senmlEtchCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml-etch",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func senmlEtchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml-etch",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func senmlExi() -> MediaType {
            .init(
                type: name,
                subtype: "senml-exi",
                source: .iana
            )
        }

        public static func sensmlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func sensmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func sensmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sensmlx"
                ],
                source: .iana
            )
        }

        public static func sensmlExi() -> MediaType {
            .init(
                type: name,
                subtype: "sensml-exi",
                source: .iana
            )
        }

        public static func sepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sep",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func sepExi() -> MediaType {
            .init(
                type: name,
                subtype: "sep-exi",
                source: .iana
            )
        }

        public static func sessionInfo() -> MediaType {
            .init(
                type: name,
                subtype: "session-info",
                source: .iana
            )
        }

        public static func setPayment() -> MediaType {
            .init(
                type: name,
                subtype: "set-payment",
                source: .iana
            )
        }

        public static func setPaymentInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "set-payment-initiation",
                possibleExtensions: [
                    "setpay"
                ],
                source: .iana
            )
        }

        public static func setRegistration() -> MediaType {
            .init(
                type: name,
                subtype: "set-registration",
                source: .iana
            )
        }

        public static func setRegistrationInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "set-registration-initiation",
                possibleExtensions: [
                    "setreg"
                ],
                source: .iana
            )
        }

        public static func sgml() -> MediaType {
            .init(
                type: name,
                subtype: "sgml",
                source: .iana
            )
        }

        public static func sgmlOpenCatalog() -> MediaType {
            .init(
                type: name,
                subtype: "sgml-open-catalog",
                source: .iana
            )
        }

        public static func shfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "shf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "shf"
                ],
                source: .iana
            )
        }

        public static func sieve() -> MediaType {
            .init(
                type: name,
                subtype: "sieve",
                possibleExtensions: [
                    "siv",
                    "sieve",
                ],
                source: .iana
            )
        }

        public static func simpleFilterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "simple-filter",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func simpleMessageSummary() -> MediaType {
            .init(
                type: name,
                subtype: "simple-message-summary",
                source: .iana
            )
        }

        public static func simplesymbolcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "simplesymbolcontainer",
                source: .iana
            )
        }

        public static func sipc() -> MediaType {
            .init(
                type: name,
                subtype: "sipc",
                source: .iana
            )
        }

        public static func slate() -> MediaType {
            .init(
                type: name,
                subtype: "slate",
                source: .iana
            )
        }

        public static func smil() -> MediaType {
            .init(
                type: name,
                subtype: "smil",
                source: .apache
            )
        }

        public static func smilXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "smil",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "smi",
                    "smil",
                ],
                source: .iana
            )
        }

        public static func smpte336m() -> MediaType {
            .init(
                type: name,
                subtype: "smpte336m",
                source: .iana
            )
        }

        public static func soapFastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "soap",
                    suffix: "fastinfoset"
                ),
                source: .iana
            )
        }

        public static func soapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "soap",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func sparqlQuery() -> MediaType {
            .init(
                type: name,
                subtype: "sparql-query",
                possibleExtensions: [
                    "rq"
                ],
                source: .iana
            )
        }

        public static func sparqlResultsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sparql-results",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "srx"
                ],
                source: .iana
            )
        }

        public static func spdxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "spdx",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func spiritsEventXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "spirits-event",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func sql() -> MediaType {
            .init(
                type: name,
                subtype: "sql",
                possibleExtensions: [
                    "sql"
                ],
                source: .iana
            )
        }

        public static func srgs() -> MediaType {
            .init(
                type: name,
                subtype: "srgs",
                possibleExtensions: [
                    "gram"
                ],
                source: .iana
            )
        }

        public static func srgsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "srgs",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "grxml"
                ],
                source: .iana
            )
        }

        public static func sruXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sru",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sru"
                ],
                source: .iana
            )
        }

        public static func ssdlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ssdl",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "ssdl"
                ],
                source: .apache
            )
        }

        public static func sslkeylogfile() -> MediaType {
            .init(
                type: name,
                subtype: "sslkeylogfile",
                source: .iana
            )
        }

        public static func ssmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ssml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ssml"
                ],
                source: .iana
            )
        }

        public static func st211041() -> MediaType {
            .init(
                type: name,
                subtype: "st2110-41",
                source: .iana
            )
        }

        public static func stixJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "stix",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func stratum() -> MediaType {
            .init(
                type: name,
                subtype: "stratum",
                source: .iana
            )
        }

        public static func suitEnvelopeCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "suit-envelope",
                    suffix: "cose"
                ),
                source: .iana
            )
        }

        public static func swidCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "swid",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func swidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "swid",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "swidtag"
                ],
                source: .iana
            )
        }

        public static func tampApexUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-apex-update",
                source: .iana
            )
        }

        public static func tampApexUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-apex-update-confirm",
                source: .iana
            )
        }

        public static func tampCommunityUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-community-update",
                source: .iana
            )
        }

        public static func tampCommunityUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-community-update-confirm",
                source: .iana
            )
        }

        public static func tampError() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-error",
                source: .iana
            )
        }

        public static func tampSequenceAdjust() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-sequence-adjust",
                source: .iana
            )
        }

        public static func tampSequenceAdjustConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-sequence-adjust-confirm",
                source: .iana
            )
        }

        public static func tampStatusQuery() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-status-query",
                source: .iana
            )
        }

        public static func tampStatusResponse() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-status-response",
                source: .iana
            )
        }

        public static func tampUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-update",
                source: .iana
            )
        }

        public static func tampUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-update-confirm",
                source: .iana
            )
        }

        public static func tar() -> MediaType {
            .init(
                type: name,
                subtype: "tar"
            )
        }

        public static func taxiiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "taxii",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func tdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "td",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func teiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tei",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "tei",
                    "teicorpus",
                ],
                source: .iana
            )
        }

        public static func tetraIsi() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_isi",
                source: .iana
            )
        }

        public static func texinfo() -> MediaType {
            .init(
                type: name,
                subtype: "texinfo",
                source: .iana
            )
        }

        public static func thraudXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "thraud",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "tfi"
                ],
                source: .iana
            )
        }

        public static func timestampQuery() -> MediaType {
            .init(
                type: name,
                subtype: "timestamp-query",
                source: .iana
            )
        }

        public static func timestampReply() -> MediaType {
            .init(
                type: name,
                subtype: "timestamp-reply",
                source: .iana
            )
        }

        public static func timestampedData() -> MediaType {
            .init(
                type: name,
                subtype: "timestamped-data",
                possibleExtensions: [
                    "tsd"
                ],
                source: .iana
            )
        }

        public static func tlsrptGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tlsrpt",
                    suffix: "gzip"
                ),
                source: .iana
            )
        }

        public static func tlsrptJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tlsrpt",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func tmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tm",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func tnauthlist() -> MediaType {
            .init(
                type: name,
                subtype: "tnauthlist",
                source: .iana
            )
        }

        public static func tocCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "toc",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func tokenIntrospectionJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "token-introspection",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func toml() -> MediaType {
            .init(
                type: name,
                subtype: "toml",
                possibleExtensions: [
                    "toml"
                ],
                source: .iana
            )
        }

        public static func trickleIceSdpfrag() -> MediaType {
            .init(
                type: name,
                subtype: "trickle-ice-sdpfrag",
                source: .iana
            )
        }

        public static func trig() -> MediaType {
            .init(
                type: name,
                subtype: "trig",
                possibleExtensions: [
                    "trig"
                ],
                source: .iana
            )
        }

        public static func trustChainJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-chain",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func trustMarkJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-mark",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func trustMarkDelegationJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-mark-delegation",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func ttmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ttml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ttml"
                ],
                source: .iana
            )
        }

        public static func tveTrigger() -> MediaType {
            .init(
                type: name,
                subtype: "tve-trigger",
                source: .iana
            )
        }

        public static func tzif() -> MediaType {
            .init(
                type: name,
                subtype: "tzif",
                source: .iana
            )
        }

        public static func tzifLeap() -> MediaType {
            .init(
                type: name,
                subtype: "tzif-leap",
                source: .iana
            )
        }

        public static func ubjson() -> MediaType {
            .init(
                type: name,
                subtype: "ubjson",
                possibleExtensions: [
                    "ubj"
                ]
            )
        }

        public static func uccsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "uccs",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func ujcsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ujcs",
                    suffix: "json"
                ),
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

        public static func urcGrpsheetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-grpsheet",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func urcRessheetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-ressheet",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rsheet"
                ],
                source: .iana
            )
        }

        public static func urcTargetdescXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-targetdesc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "td"
                ],
                source: .iana
            )
        }

        public static func urcUisocketdescXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-uisocketdesc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vc() -> MediaType {
            .init(
                type: name,
                subtype: "vc",
                source: .iana
            )
        }

        public static func vcCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vc",
                    suffix: "cose"
                ),
                source: .iana
            )
        }

        public static func vcJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vc",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func vcardJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vcard",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vcardXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vcard",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vecXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "vec"
                ],
                source: .iana
            )
        }

        public static func vecPackageGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec-package",
                    suffix: "gzip"
                ),
                source: .iana
            )
        }

        public static func vecPackageZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec-package",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vemmi() -> MediaType {
            .init(
                type: name,
                subtype: "vemmi",
                source: .iana
            )
        }

        public static func vividenceScriptfile() -> MediaType {
            .init(
                type: name,
                subtype: "vividence.scriptfile",
                source: .apache
            )
        }

        public static func vnd1000mindsDecisionModelXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.1000minds.decision-model",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "1km"
                ],
                source: .iana
            )
        }

        public static func vnd1ob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.1ob",
                source: .iana
            )
        }

        public static func vnd3gppProseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppProsePc3aXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3a",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppProsePc3achXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3ach",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppProsePc3chXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3ch",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppProsePc8Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc8",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppV2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp-v2x-local-service-information",
                source: .iana
            )
        }

        public static func vnd3gpp5gnas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gnas",
                source: .iana
            )
        }

        public static func vnd3gpp5gsa2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsa2x",
                source: .iana
            )
        }

        public static func vnd3gpp5gsa2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsa2x-local-service-information",
                source: .iana
            )
        }

        public static func vnd3gpp5gsv2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsv2x",
                source: .iana
            )
        }

        public static func vnd3gpp5gsv2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsv2x-local-service-information",
                source: .iana
            )
        }

        public static func vnd3gppAccessTransferEventsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.access-transfer-events",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppBsfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.bsf",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppCrsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.crs",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppCurrentLocationDiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.current-location-discovery",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppGmopXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.gmop",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppGtpc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.gtpc",
                source: .iana
            )
        }

        public static func vnd3gppInterworkingData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.interworking-data",
                source: .iana
            )
        }

        public static func vnd3gppLpp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.lpp",
                source: .iana
            )
        }

        public static func vnd3gppMcSignallingEar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mc-signalling-ear",
                source: .iana
            )
        }

        public static func vnd3gppMcdataAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-affiliation-command",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataMsgstoreCtrlRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-msgstore-ctrl-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataPayload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mcdata-payload",
                source: .iana
            )
        }

        public static func vnd3gppMcdataRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-regroup",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-service-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataSignalling() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mcdata-signalling",
                source: .iana
            )
        }

        public static func vnd3gppMcdataUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-ue-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcdataUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-user-profile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-affiliation-command",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttFloorRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-floor-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-location-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-mbms-usage-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-regroup",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-service-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttSignedXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-signed",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-ue-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttUeInitConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-ue-init-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcpttUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-user-profile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-affiliation-command",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-location-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-mbms-usage-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-regroup",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-service-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoTransmissionRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-transmission-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-ue-config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMcvideoUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-user-profile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppMidCallXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mid-call",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppNgap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.ngap",
                source: .iana
            )
        }

        public static func vnd3gppPfcp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pfcp",
                source: .iana
            )
        }

        public static func vnd3gppPicBwLarge() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-large",
                possibleExtensions: [
                    "plb"
                ],
                source: .iana
            )
        }

        public static func vnd3gppPicBwSmall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-small",
                possibleExtensions: [
                    "psb"
                ],
                source: .iana
            )
        }

        public static func vnd3gppPicBwVar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-var",
                possibleExtensions: [
                    "pvb"
                ],
                source: .iana
            )
        }

        public static func vnd3gppPinappInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.pinapp-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppS1ap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.s1ap",
                source: .iana
            )
        }

        public static func vnd3gppSealAppCommRequirementsInfoXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-app-comm-requirements-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealDataDeliveryInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-data-delivery-info",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealDataDeliveryInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-data-delivery-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealGroupDocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-group-doc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealLocationInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-location-info",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-location-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-mbms-usage-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealMbsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-mbs-usage-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealNetworkQosManagementInfoXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-network-qos-management-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealNetworkResourceInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-network-resource-info",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealUeConfigInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-ue-config-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealUnicastInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-unicast-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSealUserProfileInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-user-profile-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.sms",
                source: .iana
            )
        }

        public static func vnd3gppSmsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.sms",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSrvccExtXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.srvcc-ext",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppSrvccInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.srvcc-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppStateAndEventInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.state-and-event-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppUssdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.ussd",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gppV2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.v2x",
                source: .iana
            )
        }

        public static func vnd3gppVaeInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.vae-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gpp2BcmcsinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp2.bcmcsinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vnd3gpp2Sms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp2.sms",
                source: .iana
            )
        }

        public static func vnd3gpp2Tcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp2.tcap",
                possibleExtensions: [
                    "tcap"
                ],
                source: .iana
            )
        }

        public static func vnd3lightssoftwareImagescal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3lightssoftware.imagescal",
                source: .iana
            )
        }

        public static func vnd3mPostItNotes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3m.post-it-notes",
                possibleExtensions: [
                    "pwn"
                ],
                source: .iana
            )
        }

        public static func vndAccpacSimplyAso() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.accpac.simply.aso",
                possibleExtensions: [
                    "aso"
                ],
                source: .iana
            )
        }

        public static func vndAccpacSimplyImp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.accpac.simply.imp",
                possibleExtensions: [
                    "imp"
                ],
                source: .iana
            )
        }

        public static func vndAcmAddressxferJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.acm.addressxfer",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAcmChatbotJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.acm.chatbot",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAcucobol() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.acucobol",
                possibleExtensions: [
                    "acu"
                ],
                source: .iana
            )
        }

        public static func vndAcucorp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.acucorp",
                possibleExtensions: [
                    "atc",
                    "acutc",
                ],
                source: .iana
            )
        }

        public static func vndAdobeAirApplicationInstallerPackageZip()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.adobe.air-application-installer-package",
                    suffix: "zip",
                ),
                possibleExtensions: [
                    "air"
                ],
                source: .apache
            )
        }

        public static func vndAdobeFlashMovie() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.flash.movie",
                source: .iana
            )
        }

        public static func vndAdobeFormscentralFcdt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.formscentral.fcdt",
                possibleExtensions: [
                    "fcdt"
                ],
                source: .iana
            )
        }

        public static func vndAdobeFxp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.fxp",
                possibleExtensions: [
                    "fxp",
                    "fxpl",
                ],
                source: .iana
            )
        }

        public static func vndAdobePartialUpload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.partial-upload",
                source: .iana
            )
        }

        public static func vndAdobeXdpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.adobe.xdp",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdp"
                ],
                source: .iana
            )
        }

        public static func vndAdobeXfdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.xfdf",
                possibleExtensions: [
                    "xfdf"
                ],
                source: .apache
            )
        }

        public static func vndAetherImp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.aether.imp",
                source: .iana
            )
        }

        public static func vndAfpcAfplinedata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.afplinedata",
                source: .iana
            )
        }

        public static func vndAfpcAfplinedataPagedef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.afplinedata-pagedef",
                source: .iana
            )
        }

        public static func vndAfpcCmocaCmresource() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.cmoca-cmresource",
                source: .iana
            )
        }

        public static func vndAfpcFocaCharset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-charset",
                source: .iana
            )
        }

        public static func vndAfpcFocaCodedfont() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-codedfont",
                source: .iana
            )
        }

        public static func vndAfpcFocaCodepage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-codepage",
                source: .iana
            )
        }

        public static func vndAfpcModca() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca",
                source: .iana
            )
        }

        public static func vndAfpcModcaCmtable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-cmtable",
                source: .iana
            )
        }

        public static func vndAfpcModcaFormdef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-formdef",
                source: .iana
            )
        }

        public static func vndAfpcModcaMediummap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-mediummap",
                source: .iana
            )
        }

        public static func vndAfpcModcaObjectcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-objectcontainer",
                source: .iana
            )
        }

        public static func vndAfpcModcaOverlay() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-overlay",
                source: .iana
            )
        }

        public static func vndAfpcModcaPagesegment() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-pagesegment",
                source: .iana
            )
        }

        public static func vndAge() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.age",
                possibleExtensions: [
                    "age"
                ],
                source: .iana
            )
        }

        public static func vndAhBarcode() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ah-barcode",
                source: .apache
            )
        }

        public static func vndAheadSpace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ahead.space",
                possibleExtensions: [
                    "ahead"
                ],
                source: .iana
            )
        }

        public static func vndAirzipFilesecureAzf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.filesecure.azf",
                possibleExtensions: [
                    "azf"
                ],
                source: .iana
            )
        }

        public static func vndAirzipFilesecureAzs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.filesecure.azs",
                possibleExtensions: [
                    "azs"
                ],
                source: .iana
            )
        }

        public static func vndAmadeusJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.amadeus",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAmazonEbook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amazon.ebook",
                possibleExtensions: [
                    "azw"
                ],
                source: .apache
            )
        }

        public static func vndAmazonMobi8Ebook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amazon.mobi8-ebook",
                source: .iana
            )
        }

        public static func vndAmericandynamicsAcc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.americandynamics.acc",
                possibleExtensions: [
                    "acc"
                ],
                source: .iana
            )
        }

        public static func vndAmigaAmi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amiga.ami",
                possibleExtensions: [
                    "ami"
                ],
                source: .iana
            )
        }

        public static func vndAmundsenMazeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.amundsen.maze",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndAndroidOta() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.android.ota",
                source: .iana
            )
        }

        public static func vndAndroidPackageArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.android.package-archive",
                possibleExtensions: [
                    "apk"
                ],
                source: .apache
            )
        }

        public static func vndAnki() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.anki",
                source: .iana
            )
        }

        public static func vndAnserWebCertificateIssueInitiation() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.anser-web-certificate-issue-initiation",
                possibleExtensions: [
                    "cii"
                ],
                source: .iana
            )
        }

        public static func vndAnserWebFundsTransferInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.anser-web-funds-transfer-initiation",
                possibleExtensions: [
                    "fti"
                ],
                source: .apache
            )
        }

        public static func vndAntixGameComponent() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.antix.game-component",
                possibleExtensions: [
                    "atx"
                ],
                source: .iana
            )
        }

        public static func vndApacheArrowFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.arrow.file",
                source: .iana
            )
        }

        public static func vndApacheArrowStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.arrow.stream",
                source: .iana
            )
        }

        public static func vndApacheParquet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.parquet",
                source: .iana
            )
        }

        public static func vndApacheThriftBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.binary",
                source: .iana
            )
        }

        public static func vndApacheThriftCompact() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.compact",
                source: .iana
            )
        }

        public static func vndApacheThriftJson() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.json",
                source: .iana
            )
        }

        public static func vndApexlang() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apexlang",
                source: .iana
            )
        }

        public static func vndApiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.api",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAplextorWarrpJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.aplextor.warrp",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndApothekendeReservationJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.apothekende.reservation",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAppleInstallerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.apple.installer",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpkg"
                ],
                source: .iana
            )
        }

        public static func vndAppleKeynote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.keynote",
                possibleExtensions: [
                    "key"
                ],
                source: .iana
            )
        }

        public static func vndAppleMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.mpegurl",
                possibleExtensions: [
                    "m3u8"
                ],
                source: .iana
            )
        }

        public static func vndAppleNumbers() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.numbers",
                possibleExtensions: [
                    "numbers"
                ],
                source: .iana
            )
        }

        public static func vndApplePages() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.pages",
                possibleExtensions: [
                    "pages"
                ],
                source: .iana
            )
        }

        public static func vndApplePkpass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.pkpass",
                possibleExtensions: [
                    "pkpass"
                ]
            )
        }

        public static func vndArastraSwi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.arastra.swi",
                source: .apache
            )
        }

        public static func vndAristanetworksSwi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.aristanetworks.swi",
                possibleExtensions: [
                    "swi"
                ],
                source: .iana
            )
        }

        public static func vndArtisanJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.artisan",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndArtsquare() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.artsquare",
                source: .iana
            )
        }

        public static func vndAs207960VasConfigJer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.config",
                    suffix: "jer"
                ),
                source: .iana
            )
        }

        public static func vndAs207960VasConfigUper() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.config",
                    suffix: "uper"
                ),
                source: .iana
            )
        }

        public static func vndAs207960VasTapJer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.tap",
                    suffix: "jer"
                ),
                source: .iana
            )
        }

        public static func vndAs207960VasTapUper() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.tap",
                    suffix: "uper"
                ),
                source: .iana
            )
        }

        public static func vndAstraeaSoftwareIota() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.astraea-software.iota",
                possibleExtensions: [
                    "iota"
                ],
                source: .iana
            )
        }

        public static func vndAudiograph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.audiograph",
                possibleExtensions: [
                    "aep"
                ],
                source: .iana
            )
        }

        public static func vndAutodeskFbx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.autodesk.fbx",
                possibleExtensions: [
                    "fbx"
                ]
            )
        }

        public static func vndAutopackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.autopackage",
                source: .iana
            )
        }

        public static func vndAvalonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.avalon",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndAvistarXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.avistar",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndBalsamiqBmmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.balsamiq.bmml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "bmml"
                ],
                source: .iana
            )
        }

        public static func vndBalsamiqBmpr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.balsamiq.bmpr",
                source: .iana
            )
        }

        public static func vndBananaAccounting() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.banana-accounting",
                source: .iana
            )
        }

        public static func vndBbfUspError() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bbf.usp.error",
                source: .iana
            )
        }

        public static func vndBbfUspMsg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bbf.usp.msg",
                source: .iana
            )
        }

        public static func vndBbfUspMsgJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.bbf.usp.msg",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndBekitzurStechJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.bekitzur-stech",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndBelightsoftLhzdZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.belightsoft.lhzd",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndBelightsoftLhzlZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.belightsoft.lhzl",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndBintMedContent() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bint.med-content",
                source: .iana
            )
        }

        public static func vndBiopaxRdfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.biopax.rdf",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndBlinkIdbValueWrapper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blink-idb-value-wrapper",
                source: .iana
            )
        }

        public static func vndBlueiceMultipass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blueice.multipass",
                possibleExtensions: [
                    "mpm"
                ],
                source: .iana
            )
        }

        public static func vndBluetoothEpOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bluetooth.ep.oob",
                source: .iana
            )
        }

        public static func vndBluetoothLeOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bluetooth.le.oob",
                source: .iana
            )
        }

        public static func vndBmi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bmi",
                possibleExtensions: [
                    "bmi"
                ],
                source: .iana
            )
        }

        public static func vndBpf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bpf",
                source: .iana
            )
        }

        public static func vndBpf3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bpf3",
                source: .iana
            )
        }

        public static func vndBusinessobjects() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.businessobjects",
                possibleExtensions: [
                    "rep"
                ],
                source: .iana
            )
        }

        public static func vndByuUapiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.byu.uapi",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndBzip3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bzip3",
                source: .iana
            )
        }

        public static func vndC3vocScheduleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.c3voc.schedule",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndCabJscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cab-jscript",
                source: .iana
            )
        }

        public static func vndCanonCpdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.canon-cpdl",
                source: .iana
            )
        }

        public static func vndCanonLips() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.canon-lips",
                source: .iana
            )
        }

        public static func vndCapasystemsPgJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.capasystems-pg",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cel",
                source: .iana
            )
        }

        public static func vndCendioThinlincClientconf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cendio.thinlinc.clientconf",
                source: .iana
            )
        }

        public static func vndCenturySystemsTcpStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.century-systems.tcp_stream",
                source: .iana
            )
        }

        public static func vndChemdrawXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.chemdraw",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cdxml"
                ],
                source: .iana
            )
        }

        public static func vndChessPgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.chess-pgn",
                source: .iana
            )
        }

        public static func vndChipnutsKaraokeMmd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.chipnuts.karaoke-mmd",
                possibleExtensions: [
                    "mmd"
                ],
                source: .iana
            )
        }

        public static func vndCiedi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ciedi",
                source: .iana
            )
        }

        public static func vndCinderella() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cinderella",
                possibleExtensions: [
                    "cdy"
                ],
                source: .iana
            )
        }

        public static func vndCirpackIsdnExt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cirpack.isdn-ext",
                source: .iana
            )
        }

        public static func vndCitationstylesStyleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.citationstyles.style",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "csl"
                ],
                source: .iana
            )
        }

        public static func vndClaymore() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.claymore",
                possibleExtensions: [
                    "cla"
                ],
                source: .iana
            )
        }

        public static func vndCloantoRp9() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cloanto.rp9",
                possibleExtensions: [
                    "rp9"
                ],
                source: .iana
            )
        }

        public static func vndClonkC4group() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.clonk.c4group",
                possibleExtensions: [
                    "c4g",
                    "c4d",
                    "c4f",
                    "c4p",
                    "c4u",
                ],
                source: .iana
            )
        }

        public static func vndCluetrustCartomobileConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cluetrust.cartomobile-config",
                possibleExtensions: [
                    "c11amc"
                ],
                source: .iana
            )
        }

        public static func vndCluetrustCartomobileConfigPkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cluetrust.cartomobile-config-pkg",
                possibleExtensions: [
                    "c11amz"
                ],
                source: .iana
            )
        }

        public static func vndCncfHelmChartContentV1TarGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cncf.helm.chart.content.v1.tar",
                    suffix: "gzip"
                ),
                source: .iana
            )
        }

        public static func vndCncfHelmChartProvenanceV1Prov() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cncf.helm.chart.provenance.v1.prov",
                source: .iana
            )
        }

        public static func vndCncfHelmConfigV1Json() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cncf.helm.config.v1",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCoffeescript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.coffeescript",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.document",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsDocumentTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.document-template",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.presentation",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsPresentationTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.presentation-template",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.spreadsheet",
                source: .iana
            )
        }

        public static func vndCollabioXodocumentsSpreadsheetTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.spreadsheet-template",
                source: .iana
            )
        }

        public static func vndCollectionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCollectionDocJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection.doc",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCollectionNextJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection.next",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndComicbookZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.comicbook",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndComicbookRar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.comicbook-rar",
                source: .iana
            )
        }

        public static func vndCommerceBattelle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.commerce-battelle",
                source: .iana
            )
        }

        public static func vndCommonspace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.commonspace",
                possibleExtensions: [
                    "csp"
                ],
                source: .iana
            )
        }

        public static func vndContactCmsg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.contact.cmsg",
                possibleExtensions: [
                    "cdbcmsg"
                ],
                source: .iana
            )
        }

        public static func vndCoreosIgnitionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.coreos.ignition",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCosmocaller() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cosmocaller",
                possibleExtensions: [
                    "cmc"
                ],
                source: .iana
            )
        }

        public static func vndCrickClicker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker",
                possibleExtensions: [
                    "clkx"
                ],
                source: .iana
            )
        }

        public static func vndCrickClickerKeyboard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.keyboard",
                possibleExtensions: [
                    "clkk"
                ],
                source: .iana
            )
        }

        public static func vndCrickClickerPalette() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.palette",
                possibleExtensions: [
                    "clkp"
                ],
                source: .iana
            )
        }

        public static func vndCrickClickerTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.template",
                possibleExtensions: [
                    "clkt"
                ],
                source: .iana
            )
        }

        public static func vndCrickClickerWordbank() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.wordbank",
                possibleExtensions: [
                    "clkw"
                ],
                source: .iana
            )
        }

        public static func vndCriticaltoolsWbsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.criticaltools.wbs",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wbs"
                ],
                source: .iana
            )
        }

        public static func vndCryptiiPipeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cryptii.pipe",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCryptoShadeFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crypto-shade-file",
                source: .iana
            )
        }

        public static func vndCryptomatorEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cryptomator.encrypted",
                source: .iana
            )
        }

        public static func vndCryptomatorVault() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cryptomator.vault",
                source: .iana
            )
        }

        public static func vndCtcPosml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ctc-posml",
                possibleExtensions: [
                    "pml"
                ],
                source: .iana
            )
        }

        public static func vndCtctWsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ctct.ws",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndCupsPdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-pdf",
                source: .iana
            )
        }

        public static func vndCupsPostscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-postscript",
                source: .iana
            )
        }

        public static func vndCupsPpd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-ppd",
                possibleExtensions: [
                    "ppd"
                ],
                source: .iana
            )
        }

        public static func vndCupsRaster() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-raster",
                source: .iana
            )
        }

        public static func vndCupsRaw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-raw",
                source: .iana
            )
        }

        public static func vndCurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl",
                source: .iana
            )
        }

        public static func vndCurlCar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.car",
                possibleExtensions: [
                    "car"
                ],
                source: .apache
            )
        }

        public static func vndCurlPcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.pcurl",
                possibleExtensions: [
                    "pcurl"
                ],
                source: .apache
            )
        }

        public static func vndCyanDeanRootXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyan.dean.root",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndCybank() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cybank",
                source: .iana
            )
        }

        public static func vndCyclonedxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyclonedx",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndCyclonedxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyclonedx",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndD2lCoursepackage1p0Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.d2l.coursepackage1p0",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndD3mDataset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.d3m-dataset",
                source: .iana
            )
        }

        public static func vndD3mProblem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.d3m-problem",
                source: .iana
            )
        }

        public static func vndDart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dart",
                possibleExtensions: [
                    "dart"
                ],
                source: .iana
            )
        }

        public static func vndDataVisionRdz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.data-vision.rdz",
                possibleExtensions: [
                    "rdz"
                ],
                source: .iana
            )
        }

        public static func vndDatalog() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.datalog",
                source: .iana
            )
        }

        public static func vndDatapackageJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.datapackage",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndDataresourceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dataresource",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndDbf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dbf",
                possibleExtensions: [
                    "dbf"
                ],
                source: .iana
            )
        }

        public static func vndDcmpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dcmp",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dcmp"
                ],
                source: .iana
            )
        }

        public static func vndDebianBinaryPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.debian.binary-package",
                source: .iana
            )
        }

        public static func vndDeceData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.data",
                possibleExtensions: [
                    "uvf",
                    "uvvf",
                    "uvd",
                    "uvvd",
                ],
                source: .iana
            )
        }

        public static func vndDeceTtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dece.ttml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "uvt",
                    "uvvt",
                ],
                source: .iana
            )
        }

        public static func vndDeceUnspecified() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.unspecified",
                possibleExtensions: [
                    "uvx",
                    "uvvx",
                ],
                source: .iana
            )
        }

        public static func vndDeceZip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.zip",
                possibleExtensions: [
                    "uvz",
                    "uvvz",
                ],
                source: .iana
            )
        }

        public static func vndDenovoFcselayoutLink() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.denovo.fcselayout-link",
                possibleExtensions: [
                    "fe_launch"
                ],
                source: .iana
            )
        }

        public static func vndDesmumeMovie() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.desmume.movie",
                source: .iana
            )
        }

        public static func vndDirBiPlateDlNosuffix() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dir-bi.plate-dl-nosuffix",
                source: .iana
            )
        }

        public static func vndDmDelegationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dm.delegation",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDna() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dna",
                possibleExtensions: [
                    "dna"
                ],
                source: .iana
            )
        }

        public static func vndDocumentJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.document",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndDolbyMlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mlp",
                possibleExtensions: [
                    "mlp"
                ],
                source: .apache
            )
        }

        public static func vndDolbyMobile1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mobile.1",
                source: .iana
            )
        }

        public static func vndDolbyMobile2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mobile.2",
                source: .iana
            )
        }

        public static func vndDoremirScorecloudBinaryDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.doremir.scorecloud-binary-document",
                source: .iana
            )
        }

        public static func vndDpgraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dpgraph",
                possibleExtensions: [
                    "dpg"
                ],
                source: .iana
            )
        }

        public static func vndDreamfactory() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dreamfactory",
                possibleExtensions: [
                    "dfac"
                ],
                source: .iana
            )
        }

        public static func vndDriveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.drive",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndDsKeypoint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ds-keypoint",
                possibleExtensions: [
                    "kpxx"
                ],
                source: .apache
            )
        }

        public static func vndDtgLocal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local",
                source: .iana
            )
        }

        public static func vndDtgLocalFlash() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local.flash",
                source: .iana
            )
        }

        public static func vndDtgLocalHtml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local.html",
                source: .iana
            )
        }

        public static func vndDvbAit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ait",
                possibleExtensions: [
                    "ait"
                ],
                source: .iana
            )
        }

        public static func vndDvbDvbislXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.dvbisl",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbDvbj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.dvbj",
                source: .iana
            )
        }

        public static func vndDvbEsgcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.esgcontainer",
                source: .iana
            )
        }

        public static func vndDvbIpdcdftnotifaccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcdftnotifaccess",
                source: .iana
            )
        }

        public static func vndDvbIpdcesgaccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgaccess",
                source: .iana
            )
        }

        public static func vndDvbIpdcesgaccess2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgaccess2",
                source: .iana
            )
        }

        public static func vndDvbIpdcesgpdd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgpdd",
                source: .iana
            )
        }

        public static func vndDvbIpdcroaming() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcroaming",
                source: .iana
            )
        }

        public static func vndDvbIptvAlfecBase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.iptv.alfec-base",
                source: .iana
            )
        }

        public static func vndDvbIptvAlfecEnhancement() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.iptv.alfec-enhancement",
                source: .iana
            )
        }

        public static func vndDvbNotifAggregateRootXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-aggregate-root",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifContainerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-container",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifGenericXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-generic",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifIaMsglistXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-msglist",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifIaRegistrationRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-registration-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifIaRegistrationResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-registration-response",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbNotifInitXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-init",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndDvbPfr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.pfr",
                source: .iana
            )
        }

        public static func vndDvbService() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.service",
                possibleExtensions: [
                    "svc"
                ],
                source: .iana
            )
        }

        public static func vndDxr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dxr",
                source: .iana
            )
        }

        public static func vndDynageo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dynageo",
                possibleExtensions: [
                    "geo"
                ],
                source: .iana
            )
        }

        public static func vndDzr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dzr",
                source: .iana
            )
        }

        public static func vndEasykaraokeCdgdownload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.easykaraoke.cdgdownload",
                source: .iana
            )
        }

        public static func vndEcdisUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecdis-update",
                source: .iana
            )
        }

        public static func vndEcipRlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecip.rlp",
                source: .iana
            )
        }

        public static func vndEclipseDittoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eclipse.ditto",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndEcowinChart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.chart",
                possibleExtensions: [
                    "mag"
                ],
                source: .iana
            )
        }

        public static func vndEcowinFilerequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.filerequest",
                source: .iana
            )
        }

        public static func vndEcowinFileupdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.fileupdate",
                source: .iana
            )
        }

        public static func vndEcowinSeries() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.series",
                source: .iana
            )
        }

        public static func vndEcowinSeriesrequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.seriesrequest",
                source: .iana
            )
        }

        public static func vndEcowinSeriesupdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.seriesupdate",
                source: .iana
            )
        }

        public static func vndEfiImg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.efi.img",
                source: .iana
            )
        }

        public static func vndEfiIso() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.efi.iso",
                source: .iana
            )
        }

        public static func vndElnZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eln",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndEmclientAccessrequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.emclient.accessrequest",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEnliven() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.enliven",
                possibleExtensions: [
                    "nml"
                ],
                source: .iana
            )
        }

        public static func vndEnphaseEnvoy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.enphase.envoy",
                source: .iana
            )
        }

        public static func vndEprintsDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eprints.data",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEpsonEsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.esf",
                possibleExtensions: [
                    "esf"
                ],
                source: .iana
            )
        }

        public static func vndEpsonMsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.msf",
                possibleExtensions: [
                    "msf"
                ],
                source: .iana
            )
        }

        public static func vndEpsonQuickanime() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.quickanime",
                possibleExtensions: [
                    "qam"
                ],
                source: .iana
            )
        }

        public static func vndEpsonSalt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.salt",
                possibleExtensions: [
                    "slt"
                ],
                source: .iana
            )
        }

        public static func vndEpsonSsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.ssf",
                possibleExtensions: [
                    "ssf"
                ],
                source: .iana
            )
        }

        public static func vndEricssonQuickcall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ericsson.quickcall",
                source: .iana
            )
        }

        public static func vndErofs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.erofs",
                source: .iana
            )
        }

        public static func vndEspassEspassZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.espass-espass",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndEszigno3Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eszigno3",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "es3",
                    "et3",
                ],
                source: .iana
            )
        }

        public static func vndEtsiAocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.aoc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiAsicEZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.asic-e",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndEtsiAsicSZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.asic-s",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndEtsiCugXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.cug",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvcommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvcommand",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvdiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvdiscovery",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvprofile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvsadBcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-bc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvsadCodXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-cod",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvsadNpvrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-npvr",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvserviceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvservice",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvsyncXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsync",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiIptvueprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvueprofile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiMcidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.mcid",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiMheg5() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.mheg5",
                source: .iana
            )
        }

        public static func vndEtsiOverloadControlPolicyDatasetXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.overload-control-policy-dataset",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiPstnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.pstn",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiSciXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.sci",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiSimservsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.simservs",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiTimestampToken() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.timestamp-token",
                source: .iana
            )
        }

        public static func vndEtsiTslXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.tsl",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndEtsiTslDer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.tsl.der",
                source: .iana
            )
        }

        public static func vndEuKasparianCarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eu.kasparian.car",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndEudoraData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.eudora.data",
                source: .iana
            )
        }

        public static func vndEvolvEcigProfile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.profile",
                source: .iana
            )
        }

        public static func vndEvolvEcigSettings() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.settings",
                source: .iana
            )
        }

        public static func vndEvolvEcigTheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.theme",
                source: .iana
            )
        }

        public static func vndExstreamEmpowerZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.exstream-empower",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndExstreamPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.exstream-package",
                source: .iana
            )
        }

        public static func vndEzpixAlbum() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ezpix-album",
                possibleExtensions: [
                    "ez2"
                ],
                source: .iana
            )
        }

        public static func vndEzpixPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ezpix-package",
                possibleExtensions: [
                    "ez3"
                ],
                source: .iana
            )
        }

        public static func vndFSecureMobile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.f-secure.mobile",
                source: .iana
            )
        }

        public static func vndFafYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.faf",
                    suffix: "yaml"
                ),
                source: .iana
            )
        }

        public static func vndFamilysearchGedcomZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.familysearch.gedcom",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndFastcopyDiskImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fastcopy-disk-image",
                source: .iana
            )
        }

        public static func vndFdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdf",
                possibleExtensions: [
                    "fdf"
                ],
                source: .apache
            )
        }

        public static func vndFdsnMseed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdsn.mseed",
                possibleExtensions: [
                    "mseed"
                ],
                source: .iana
            )
        }

        public static func vndFdsnSeed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdsn.seed",
                possibleExtensions: [
                    "seed",
                    "dataless",
                ],
                source: .iana
            )
        }

        public static func vndFdsnStationxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.fdsn.stationxml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndFfsns() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ffsns",
                source: .iana
            )
        }

        public static func vndFgb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fgb",
                source: .iana
            )
        }

        public static func vndFiclabFlbZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ficlab.flb",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndFilmitZfc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.filmit.zfc",
                source: .iana
            )
        }

        public static func vndFints() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fints",
                source: .iana
            )
        }

        public static func vndFiremonkeysCloudcell() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.firemonkeys.cloudcell",
                source: .iana
            )
        }

        public static func vndFlographit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.flographit",
                possibleExtensions: [
                    "gph"
                ],
                source: .iana
            )
        }

        public static func vndFluxtimeClip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fluxtime.clip",
                possibleExtensions: [
                    "ftc"
                ],
                source: .iana
            )
        }

        public static func vndFontFontforgeSfd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.font-fontforge-sfd",
                source: .iana
            )
        }

        public static func vndFramemaker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.framemaker",
                possibleExtensions: [
                    "fm",
                    "frame",
                    "maker",
                    "book",
                ],
                source: .iana
            )
        }

        public static func vndFreelogComic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.freelog.comic",
                source: .iana
            )
        }

        public static func vndFrogansFnc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.frogans.fnc",
                possibleExtensions: [
                    "fnc"
                ],
                source: .apache
            )
        }

        public static func vndFrogansLtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.frogans.ltf",
                possibleExtensions: [
                    "ltf"
                ],
                source: .apache
            )
        }

        public static func vndFscWeblaunch() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fsc.weblaunch",
                possibleExtensions: [
                    "fsc"
                ],
                source: .iana
            )
        }

        public static func vndFujifilmFbDocuworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks",
                source: .iana
            )
        }

        public static func vndFujifilmFbDocuworksBinder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks.binder",
                source: .iana
            )
        }

        public static func vndFujifilmFbDocuworksContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks.container",
                source: .iana
            )
        }

        public static func vndFujifilmFbJfiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.fujifilm.fb.jfi",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndFujitsuOasys() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys",
                possibleExtensions: [
                    "oas"
                ],
                source: .iana
            )
        }

        public static func vndFujitsuOasys2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys2",
                possibleExtensions: [
                    "oa2"
                ],
                source: .iana
            )
        }

        public static func vndFujitsuOasys3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys3",
                possibleExtensions: [
                    "oa3"
                ],
                source: .iana
            )
        }

        public static func vndFujitsuOasysgp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasysgp",
                possibleExtensions: [
                    "fg5"
                ],
                source: .iana
            )
        }

        public static func vndFujitsuOasysprs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasysprs",
                possibleExtensions: [
                    "bh2"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxArtEx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.art-ex",
                source: .iana
            )
        }

        public static func vndFujixeroxArt4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.art4",
                source: .iana
            )
        }

        public static func vndFujixeroxDdd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.ddd",
                possibleExtensions: [
                    "ddd"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxDocuworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks",
                possibleExtensions: [
                    "xdw"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxDocuworksBinder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks.binder",
                possibleExtensions: [
                    "xbd"
                ],
                source: .iana
            )
        }

        public static func vndFujixeroxDocuworksContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks.container",
                source: .iana
            )
        }

        public static func vndFujixeroxHbpl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.hbpl",
                source: .iana
            )
        }

        public static func vndFutMisnet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fut-misnet",
                source: .iana
            )
        }

        public static func vndFutoinCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.futoin",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndFutoinJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.futoin",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndFuzzysheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fuzzysheet",
                possibleExtensions: [
                    "fzs"
                ],
                source: .iana
            )
        }

        public static func vndG3pixG3fc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.g3pix.g3fc",
                source: .iana
            )
        }

        public static func vndGa4ghPassportJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ga4gh.passport",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func vndGenomatixTuxedo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.genomatix.tuxedo",
                possibleExtensions: [
                    "txd"
                ],
                source: .iana
            )
        }

        public static func vndGenozip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.genozip",
                source: .iana
            )
        }

        public static func vndGenticsGrdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentics.grd",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndGentooCatmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentoo.catmetadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndGentooEbuild() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.ebuild",
                source: .iana
            )
        }

        public static func vndGentooEclass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.eclass",
                source: .iana
            )
        }

        public static func vndGentooGpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.gpkg",
                source: .iana
            )
        }

        public static func vndGentooManifest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.manifest",
                source: .iana
            )
        }

        public static func vndGentooPkgmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentoo.pkgmetadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndGentooXpak() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.xpak",
                source: .iana
            )
        }

        public static func vndGeoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.geo",
                    suffix: "json"
                ),
                source: .apache
            )
        }

        public static func vndGeocubeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.geocube",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func vndGeogebraFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.file",
                possibleExtensions: [
                    "ggb"
                ],
                source: .iana
            )
        }

        public static func vndGeogebraPinboard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.pinboard",
                source: .iana
            )
        }

        public static func vndGeogebraSlides() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.slides",
                possibleExtensions: [
                    "ggs"
                ],
                source: .iana
            )
        }

        public static func vndGeogebraTool() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.tool",
                possibleExtensions: [
                    "ggt"
                ],
                source: .iana
            )
        }

        public static func vndGeometryExplorer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geometry-explorer",
                possibleExtensions: [
                    "gex",
                    "gre",
                ],
                source: .iana
            )
        }

        public static func vndGeonext() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geonext",
                possibleExtensions: [
                    "gxt"
                ],
                source: .iana
            )
        }

        public static func vndGeoplan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geoplan",
                possibleExtensions: [
                    "g2w"
                ],
                source: .iana
            )
        }

        public static func vndGeospace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geospace",
                possibleExtensions: [
                    "g3w"
                ],
                source: .iana
            )
        }

        public static func vndGerber() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gerber",
                source: .iana
            )
        }

        public static func vndGlobalplatformCardContentMgt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.globalplatform.card-content-mgt",
                source: .iana
            )
        }

        public static func vndGlobalplatformCardContentMgtResponse()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.globalplatform.card-content-mgt-response",
                source: .iana
            )
        }

        public static func vndGmx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gmx",
                possibleExtensions: [
                    "gmx"
                ],
                source: .iana
            )
        }

        public static func vndGnuTalerExchangeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gnu.taler.exchange",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndGnuTalerMerchantJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gnu.taler.merchant",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndGoogleAppsAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.audio"
            )
        }

        public static func vndGoogleAppsDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.document",
                possibleExtensions: [
                    "gdoc"
                ]
            )
        }

        public static func vndGoogleAppsDrawing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.drawing",
                possibleExtensions: [
                    "gdraw"
                ]
            )
        }

        public static func vndGoogleAppsDriveSdk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.drive-sdk"
            )
        }

        public static func vndGoogleAppsFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.file"
            )
        }

        public static func vndGoogleAppsFolder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.folder"
            )
        }

        public static func vndGoogleAppsForm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.form",
                possibleExtensions: [
                    "gform"
                ]
            )
        }

        public static func vndGoogleAppsFusiontable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.fusiontable"
            )
        }

        public static func vndGoogleAppsJam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.jam",
                possibleExtensions: [
                    "gjam"
                ]
            )
        }

        public static func vndGoogleAppsMailLayout() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.mail-layout"
            )
        }

        public static func vndGoogleAppsMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.map",
                possibleExtensions: [
                    "gmap"
                ]
            )
        }

        public static func vndGoogleAppsPhoto() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.photo"
            )
        }

        public static func vndGoogleAppsPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.presentation",
                possibleExtensions: [
                    "gslides"
                ]
            )
        }

        public static func vndGoogleAppsScript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.script",
                possibleExtensions: [
                    "gscript"
                ]
            )
        }

        public static func vndGoogleAppsShortcut() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.shortcut"
            )
        }

        public static func vndGoogleAppsSite() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.site",
                possibleExtensions: [
                    "gsite"
                ]
            )
        }

        public static func vndGoogleAppsSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.spreadsheet",
                possibleExtensions: [
                    "gsheet"
                ]
            )
        }

        public static func vndGoogleAppsUnknown() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.unknown"
            )
        }

        public static func vndGoogleAppsVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.video"
            )
        }

        public static func vndGoogleEarthKmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.google-earth.kml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "kml"
                ],
                source: .iana
            )
        }

        public static func vndGoogleEarthKmz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-earth.kmz",
                possibleExtensions: [
                    "kmz"
                ],
                source: .iana
            )
        }

        public static func vndGovSkEFormXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.e-form",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func vndGovSkEFormZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.e-form",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndGovSkXmldatacontainerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.xmldatacontainer",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdcf"
                ],
                source: .iana
            )
        }

        public static func vndGpxseeMapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gpxsee.map",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndGrafeq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.grafeq",
                possibleExtensions: [
                    "gqf",
                    "gqs",
                ],
                source: .iana
            )
        }

        public static func vndGridmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gridmp",
                source: .iana
            )
        }

        public static func vndGrooveAccount() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-account",
                possibleExtensions: [
                    "gac"
                ],
                source: .iana
            )
        }

        public static func vndGrooveHelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-help",
                possibleExtensions: [
                    "ghf"
                ],
                source: .iana
            )
        }

        public static func vndGrooveIdentityMessage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-identity-message",
                possibleExtensions: [
                    "gim"
                ],
                source: .iana
            )
        }

        public static func vndGrooveInjector() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-injector",
                possibleExtensions: [
                    "grv"
                ],
                source: .iana
            )
        }

        public static func vndGrooveToolMessage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-tool-message",
                possibleExtensions: [
                    "gtm"
                ],
                source: .iana
            )
        }

        public static func vndGrooveToolTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-tool-template",
                possibleExtensions: [
                    "tpl"
                ],
                source: .iana
            )
        }

        public static func vndGrooveVcard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-vcard",
                possibleExtensions: [
                    "vcg"
                ],
                source: .iana
            )
        }

        public static func vndHalJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hal",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHalXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hal",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "hal"
                ],
                source: .iana
            )
        }

        public static func vndHandheldEntertainmentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.handheld-entertainment",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "zmm"
                ],
                source: .iana
            )
        }

        public static func vndHbci() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hbci",
                possibleExtensions: [
                    "hbci"
                ],
                source: .iana
            )
        }

        public static func vndHcJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hc",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHclBireports() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hcl-bireports",
                source: .iana
            )
        }

        public static func vndHdt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hdt",
                source: .iana
            )
        }

        public static func vndHerokuJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.heroku",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHheLessonPlayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hhe.lesson-player",
                possibleExtensions: [
                    "les"
                ],
                source: .iana
            )
        }

        public static func vndHpHpgl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hpgl",
                possibleExtensions: [
                    "hpgl"
                ],
                source: .iana
            )
        }

        public static func vndHpHpid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hpid",
                possibleExtensions: [
                    "hpid"
                ],
                source: .iana
            )
        }

        public static func vndHpHps() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hps",
                possibleExtensions: [
                    "hps"
                ],
                source: .iana
            )
        }

        public static func vndHpJlyt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-jlyt",
                possibleExtensions: [
                    "jlt"
                ],
                source: .iana
            )
        }

        public static func vndHpPcl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-pcl",
                possibleExtensions: [
                    "pcl"
                ],
                source: .iana
            )
        }

        public static func vndHpPclxl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-pclxl",
                possibleExtensions: [
                    "pclxl"
                ],
                source: .iana
            )
        }

        public static func vndHsl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hsl",
                source: .iana
            )
        }

        public static func vndHttphone() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.httphone",
                source: .iana
            )
        }

        public static func vndHydrostatixSofData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hydrostatix.sof-data",
                possibleExtensions: [
                    "sfd-hdstx"
                ],
                source: .iana
            )
        }

        public static func vndHyperJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyper",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHyperItemJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyper-item",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHyperdriveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyperdrive",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndHzn3dCrossword() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hzn-3d-crossword",
                source: .iana
            )
        }

        public static func vndIbmAfplinedata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.afplinedata",
                source: .apache
            )
        }

        public static func vndIbmElectronicMedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.electronic-media",
                source: .iana
            )
        }

        public static func vndIbmMinipay() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.minipay",
                possibleExtensions: [
                    "mpy"
                ],
                source: .iana
            )
        }

        public static func vndIbmModcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.modcap",
                possibleExtensions: [
                    "afp",
                    "listafp",
                    "list3820",
                ],
                source: .apache
            )
        }

        public static func vndIbmRightsManagement() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.rights-management",
                possibleExtensions: [
                    "irm"
                ],
                source: .iana
            )
        }

        public static func vndIbmSecureContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.secure-container",
                possibleExtensions: [
                    "sc"
                ],
                source: .iana
            )
        }

        public static func vndIccprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iccprofile",
                possibleExtensions: [
                    "icc",
                    "icm",
                ],
                source: .iana
            )
        }

        public static func vndIeee1905() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ieee.1905",
                source: .iana
            )
        }

        public static func vndIgloader() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.igloader",
                possibleExtensions: [
                    "igl"
                ],
                source: .iana
            )
        }

        public static func vndImagemeterFolderZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.imagemeter.folder",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndImagemeterImageZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.imagemeter.image",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndImmervisionIvp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.immervision-ivp",
                possibleExtensions: [
                    "ivp"
                ],
                source: .iana
            )
        }

        public static func vndImmervisionIvu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.immervision-ivu",
                possibleExtensions: [
                    "ivu"
                ],
                source: .iana
            )
        }

        public static func vndImsImsccv1p1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p1",
                source: .iana
            )
        }

        public static func vndImsImsccv1p2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p2",
                source: .iana
            )
        }

        public static func vndImsImsccv1p3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p3",
                source: .iana
            )
        }

        public static func vndImsLisV2ResultJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lis.v2.result",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndImsLtiV2ToolconsumerprofileJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolconsumerprofile",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndImsLtiV2ToolproxyJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolproxy",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndImsLtiV2ToolproxyIdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolproxy.id",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndImsLtiV2ToolsettingsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolsettings",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndImsLtiV2ToolsettingsSimpleJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolsettings.simple",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndInformedcontrolRmsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.informedcontrol.rms",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndInformixVisionary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.informix-visionary",
                source: .apache
            )
        }

        public static func vndInfotechProject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.infotech.project",
                source: .iana
            )
        }

        public static func vndInfotechProjectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.infotech.project",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndInnopathWampNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.innopath.wamp.notification",
                source: .iana
            )
        }

        public static func vndInsorsIgm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.insors.igm",
                possibleExtensions: [
                    "igm"
                ],
                source: .iana
            )
        }

        public static func vndInterconFormnet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intercon.formnet",
                possibleExtensions: [
                    "xpw",
                    "xpx",
                ],
                source: .iana
            )
        }

        public static func vndIntergeo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intergeo",
                possibleExtensions: [
                    "i2g"
                ],
                source: .iana
            )
        }

        public static func vndIntertrustDigibox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intertrust.digibox",
                source: .iana
            )
        }

        public static func vndIntertrustNncp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intertrust.nncp",
                source: .iana
            )
        }

        public static func vndIntuQbo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intu.qbo",
                possibleExtensions: [
                    "qbo"
                ],
                source: .iana
            )
        }

        public static func vndIntuQfx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intu.qfx",
                possibleExtensions: [
                    "qfx"
                ],
                source: .iana
            )
        }

        public static func vndIpfsIpnsRecord() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipfs.ipns-record",
                source: .iana
            )
        }

        public static func vndIpldCar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.car",
                source: .iana
            )
        }

        public static func vndIpldDagCbor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.dag-cbor",
                source: .iana
            )
        }

        public static func vndIpldDagJson() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.dag-json",
                source: .iana
            )
        }

        public static func vndIpldRaw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.raw",
                source: .iana
            )
        }

        public static func vndIptcG2CatalogitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.catalogitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2ConceptitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.conceptitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2KnowledgeitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.knowledgeitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2NewsitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.newsitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2NewsmessageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.newsmessage",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2PackageitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.packageitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIptcG2PlanningitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.planningitem",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndIpunpluggedRcprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipunplugged.rcprofile",
                possibleExtensions: [
                    "rcprofile"
                ],
                source: .iana
            )
        }

        public static func vndIrepositoryPackageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.irepository.package",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "irp"
                ],
                source: .iana
            )
        }

        public static func vndIsXpr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.is-xpr",
                possibleExtensions: [
                    "xpr"
                ],
                source: .iana
            )
        }

        public static func vndIsacFcs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.isac.fcs",
                possibleExtensions: [
                    "fcs"
                ],
                source: .iana
            )
        }

        public static func vndIso1178310Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iso11783-10",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndJam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jam",
                possibleExtensions: [
                    "jam"
                ],
                source: .iana
            )
        }

        public static func vndJapannetDirectoryService() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-directory-service",
                source: .iana
            )
        }

        public static func vndJapannetJpnstoreWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-jpnstore-wakeup",
                source: .iana
            )
        }

        public static func vndJapannetPaymentWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-payment-wakeup",
                source: .iana
            )
        }

        public static func vndJapannetRegistration() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-registration",
                source: .iana
            )
        }

        public static func vndJapannetRegistrationWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-registration-wakeup",
                source: .iana
            )
        }

        public static func vndJapannetSetstoreWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-setstore-wakeup",
                source: .iana
            )
        }

        public static func vndJapannetVerification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-verification",
                source: .iana
            )
        }

        public static func vndJapannetVerificationWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-verification-wakeup",
                source: .iana
            )
        }

        public static func vndJcpJavameMidletRms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jcp.javame.midlet-rms",
                possibleExtensions: [
                    "rms"
                ],
                source: .iana
            )
        }

        public static func vndJisp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jisp",
                possibleExtensions: [
                    "jisp"
                ],
                source: .iana
            )
        }

        public static func vndJoostJodaArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.joost.joda-archive",
                possibleExtensions: [
                    "joda"
                ],
                source: .iana
            )
        }

        public static func vndJskIsdnNgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jsk.isdn-ngn",
                source: .iana
            )
        }

        public static func vndKahootz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kahootz",
                possibleExtensions: [
                    "ktz",
                    "ktr",
                ],
                source: .iana
            )
        }

        public static func vndKdeKarbon() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.karbon",
                possibleExtensions: [
                    "karbon"
                ],
                source: .iana
            )
        }

        public static func vndKdeKchart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kchart",
                possibleExtensions: [
                    "chrt"
                ],
                source: .iana
            )
        }

        public static func vndKdeKformula() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kformula",
                possibleExtensions: [
                    "kfo"
                ],
                source: .iana
            )
        }

        public static func vndKdeKivio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kivio",
                possibleExtensions: [
                    "flw"
                ],
                source: .iana
            )
        }

        public static func vndKdeKontour() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kontour",
                possibleExtensions: [
                    "kon"
                ],
                source: .iana
            )
        }

        public static func vndKdeKpresenter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kpresenter",
                possibleExtensions: [
                    "kpr",
                    "kpt",
                ],
                source: .iana
            )
        }

        public static func vndKdeKspread() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kspread",
                possibleExtensions: [
                    "ksp"
                ],
                source: .iana
            )
        }

        public static func vndKdeKword() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kword",
                possibleExtensions: [
                    "kwd",
                    "kwt",
                ],
                source: .iana
            )
        }

        public static func vndKdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kdl",
                source: .iana
            )
        }

        public static func vndKenameaapp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kenameaapp",
                possibleExtensions: [
                    "htke"
                ],
                source: .iana
            )
        }

        public static func vndKeymanKmpZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.keyman.kmp",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndKeymanKmx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.keyman.kmx",
                source: .iana
            )
        }

        public static func vndKidspiration() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kidspiration",
                possibleExtensions: [
                    "kia"
                ],
                source: .iana
            )
        }

        public static func vndKinar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kinar",
                possibleExtensions: [
                    "kne",
                    "knp",
                ],
                source: .iana
            )
        }

        public static func vndKoan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.koan",
                possibleExtensions: [
                    "skp",
                    "skd",
                    "skt",
                    "skm",
                ],
                source: .iana
            )
        }

        public static func vndKodakDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kodak-descriptor",
                possibleExtensions: [
                    "sse"
                ],
                source: .iana
            )
        }

        public static func vndLas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.las",
                source: .iana
            )
        }

        public static func vndLasLasJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.las.las",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndLasLasXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.las.las",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lasxml"
                ],
                source: .iana
            )
        }

        public static func vndLaszip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.laszip",
                source: .iana
            )
        }

        public static func vndLdevProductlicensing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ldev.productlicensing",
                source: .iana
            )
        }

        public static func vndLeapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.leap",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndLibertyRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.liberty-request",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndLlamagraphicsLifeBalanceDesktop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.llamagraphics.life-balance.desktop",
                possibleExtensions: [
                    "lbd"
                ],
                source: .iana
            )
        }

        public static func vndLlamagraphicsLifeBalanceExchangeXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.llamagraphics.life-balance.exchange",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lbe"
                ],
                source: .iana
            )
        }

        public static func vndLogipipeCircuitZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.logipipe.circuit",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndLoom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.loom",
                source: .iana
            )
        }

        public static func vndLotus123() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-1-2-3",
                possibleExtensions: [
                    "123"
                ],
                source: .iana
            )
        }

        public static func vndLotusApproach() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-approach",
                possibleExtensions: [
                    "apr"
                ],
                source: .iana
            )
        }

        public static func vndLotusFreelance() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-freelance",
                possibleExtensions: [
                    "pre"
                ],
                source: .iana
            )
        }

        public static func vndLotusNotes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-notes",
                possibleExtensions: [
                    "nsf"
                ],
                source: .iana
            )
        }

        public static func vndLotusOrganizer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-organizer",
                possibleExtensions: [
                    "org"
                ],
                source: .iana
            )
        }

        public static func vndLotusScreencam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-screencam",
                possibleExtensions: [
                    "scm"
                ],
                source: .iana
            )
        }

        public static func vndLotusWordpro() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-wordpro",
                possibleExtensions: [
                    "lwp"
                ],
                source: .iana
            )
        }

        public static func vndMacportsPortpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.macports.portpkg",
                possibleExtensions: [
                    "portpkg"
                ],
                source: .iana
            )
        }

        public static func vndMaml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.maml",
                source: .iana
            )
        }

        public static func vndMapboxVectorTile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mapbox-vector-tile",
                possibleExtensions: [
                    "mvt"
                ],
                source: .iana
            )
        }

        public static func vndMarlinDrmActiontokenXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.actiontoken",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMarlinDrmConftokenXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.conftoken",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMarlinDrmLicenseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.license",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMarlinDrmMdcf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.marlin.drm.mdcf",
                source: .iana
            )
        }

        public static func vndMasonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.mason",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndMaxarArchive3tzZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.maxar.archive.3tz",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndMaxmindMaxmindDb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.maxmind.maxmind-db",
                source: .iana
            )
        }

        public static func vndMcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mcd",
                possibleExtensions: [
                    "mcd"
                ],
                source: .iana
            )
        }

        public static func vndMdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mdl",
                source: .iana
            )
        }

        public static func vndMdlMbsdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mdl-mbsdf",
                source: .iana
            )
        }

        public static func vndMedcalcdata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.medcalcdata",
                possibleExtensions: [
                    "mc1"
                ],
                source: .iana
            )
        }

        public static func vndMediastationCdkey() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mediastation.cdkey",
                possibleExtensions: [
                    "cdkey"
                ],
                source: .iana
            )
        }

        public static func vndMedicalholodeckRecordxr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.medicalholodeck.recordxr",
                source: .iana
            )
        }

        public static func vndMeridianSlingshot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.meridian-slingshot",
                source: .iana
            )
        }

        public static func vndMermaid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mermaid",
                source: .iana
            )
        }

        public static func vndMfer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mfer",
                possibleExtensions: [
                    "mwf"
                ],
                source: .iana
            )
        }

        public static func vndMfmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mfmp",
                possibleExtensions: [
                    "mfm"
                ],
                source: .iana
            )
        }

        public static func vndMicroJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.micro",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndMicrografxFlo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.micrografx.flo",
                possibleExtensions: [
                    "flo"
                ],
                source: .iana
            )
        }

        public static func vndMicrografxIgx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.micrografx.igx",
                possibleExtensions: [
                    "igx"
                ],
                source: .iana
            )
        }

        public static func vndMicrosoftPortableExecutable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.portable-executable",
                source: .iana
            )
        }

        public static func vndMicrosoftWindowsThumbnailCache() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.windows.thumbnail-cache",
                source: .iana
            )
        }

        public static func vndMieleJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.miele",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndMif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mif",
                possibleExtensions: [
                    "mif"
                ],
                source: .iana
            )
        }

        public static func vndMinisoftHp3000Save() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.minisoft-hp3000-save",
                source: .iana
            )
        }

        public static func vndMitsubishiMistyGuardTrustweb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mitsubishi.misty-guard.trustweb",
                source: .iana
            )
        }

        public static func vndMobiusDaf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.daf",
                possibleExtensions: [
                    "daf"
                ],
                source: .iana
            )
        }

        public static func vndMobiusDis() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.dis",
                possibleExtensions: [
                    "dis"
                ],
                source: .iana
            )
        }

        public static func vndMobiusMbk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.mbk",
                possibleExtensions: [
                    "mbk"
                ],
                source: .iana
            )
        }

        public static func vndMobiusMqy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.mqy",
                possibleExtensions: [
                    "mqy"
                ],
                source: .iana
            )
        }

        public static func vndMobiusMsl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.msl",
                possibleExtensions: [
                    "msl"
                ],
                source: .iana
            )
        }

        public static func vndMobiusPlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.plc",
                possibleExtensions: [
                    "plc"
                ],
                source: .iana
            )
        }

        public static func vndMobiusTxf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.txf",
                possibleExtensions: [
                    "txf"
                ],
                source: .iana
            )
        }

        public static func vndModl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.modl",
                source: .iana
            )
        }

        public static func vndMophunApplication() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mophun.application",
                possibleExtensions: [
                    "mpn"
                ],
                source: .iana
            )
        }

        public static func vndMophunCertificate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mophun.certificate",
                possibleExtensions: [
                    "mpc"
                ],
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuite() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteAdsi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.adsi",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteFis() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.fis",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteGotap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.gotap",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteKmr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.kmr",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteTtc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.ttc",
                source: .iana
            )
        }

        public static func vndMotorolaFlexsuiteWem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.wem",
                source: .iana
            )
        }

        public static func vndMotorolaIprm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.iprm",
                source: .iana
            )
        }

        public static func vndMozillaXulXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.mozilla.xul",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xul"
                ],
                source: .iana
            )
        }

        public static func vndMs3mfdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-3mfdocument",
                source: .iana
            )
        }

        public static func vndMsArtgalry() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-artgalry",
                possibleExtensions: [
                    "cil"
                ],
                source: .iana
            )
        }

        public static func vndMsAsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-asf",
                source: .iana
            )
        }

        public static func vndMsCabCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-cab-compressed",
                possibleExtensions: [
                    "cab"
                ],
                source: .iana
            )
        }

        public static func vndMsColorIccprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-color.iccprofile",
                source: .apache
            )
        }

        public static func vndMsExcel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel",
                possibleExtensions: [
                    "xls",
                    "xlm",
                    "xla",
                    "xlc",
                    "xlt",
                    "xlw",
                ],
                source: .iana
            )
        }

        public static func vndMsExcelAddinMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.addin.macroenabled.12",
                possibleExtensions: [
                    "xlam"
                ],
                source: .iana
            )
        }

        public static func vndMsExcelSheetBinaryMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.sheet.binary.macroenabled.12",
                possibleExtensions: [
                    "xlsb"
                ],
                source: .iana
            )
        }

        public static func vndMsExcelSheetMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.sheet.macroenabled.12",
                possibleExtensions: [
                    "xlsm"
                ],
                source: .iana
            )
        }

        public static func vndMsExcelTemplateMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.template.macroenabled.12",
                possibleExtensions: [
                    "xltm"
                ],
                source: .iana
            )
        }

        public static func vndMsFontobject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-fontobject",
                possibleExtensions: [
                    "eot"
                ],
                source: .iana
            )
        }

        public static func vndMsHtmlhelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-htmlhelp",
                possibleExtensions: [
                    "chm"
                ],
                source: .iana
            )
        }

        public static func vndMsIms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-ims",
                possibleExtensions: [
                    "ims"
                ],
                source: .iana
            )
        }

        public static func vndMsLrm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-lrm",
                possibleExtensions: [
                    "lrm"
                ],
                source: .iana
            )
        }

        public static func vndMsOfficeActivexXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-office.activex",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMsOfficetheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-officetheme",
                possibleExtensions: [
                    "thmx"
                ],
                source: .iana
            )
        }

        public static func vndMsOpentype() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-opentype",
                source: .apache
            )
        }

        public static func vndMsOutlook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-outlook",
                possibleExtensions: [
                    "msg"
                ]
            )
        }

        public static func vndMsPackageObfuscatedOpentype() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-package.obfuscated-opentype",
                source: .apache
            )
        }

        public static func vndMsPkiSeccat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-pki.seccat",
                possibleExtensions: [
                    "cat"
                ],
                source: .apache
            )
        }

        public static func vndMsPkiStl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-pki.stl",
                possibleExtensions: [
                    "stl"
                ],
                source: .apache
            )
        }

        public static func vndMsPlayreadyInitiatorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-playready.initiator",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMsPowerpoint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint",
                possibleExtensions: [
                    "ppt",
                    "pps",
                    "pot",
                ],
                source: .iana
            )
        }

        public static func vndMsPowerpointAddinMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.addin.macroenabled.12",
                possibleExtensions: [
                    "ppam"
                ],
                source: .iana
            )
        }

        public static func vndMsPowerpointPresentationMacroenabled12()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.presentation.macroenabled.12",
                possibleExtensions: [
                    "pptm"
                ],
                source: .iana
            )
        }

        public static func vndMsPowerpointSlideMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.slide.macroenabled.12",
                possibleExtensions: [
                    "sldm"
                ],
                source: .iana
            )
        }

        public static func vndMsPowerpointSlideshowMacroenabled12() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.slideshow.macroenabled.12",
                possibleExtensions: [
                    "ppsm"
                ],
                source: .iana
            )
        }

        public static func vndMsPowerpointTemplateMacroenabled12() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.template.macroenabled.12",
                possibleExtensions: [
                    "potm"
                ],
                source: .iana
            )
        }

        public static func vndMsPrintdevicecapabilitiesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printdevicecapabilities",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMsPrintingPrintticketXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printing.printticket",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func vndMsPrintschematicketXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printschematicket",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndMsProject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-project",
                possibleExtensions: [
                    "mpp",
                    "mpt",
                ],
                source: .iana
            )
        }

        public static func vndMsTnef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-tnef",
                source: .iana
            )
        }

        public static func vndMsVisioViewer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-visio.viewer",
                possibleExtensions: [
                    "vdx"
                ]
            )
        }

        public static func vndMsWindowsDevicepairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.devicepairing",
                source: .iana
            )
        }

        public static func vndMsWindowsNwprintingOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.nwprinting.oob",
                source: .iana
            )
        }

        public static func vndMsWindowsPrinterpairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.printerpairing",
                source: .iana
            )
        }

        public static func vndMsWindowsWsdOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.wsd.oob",
                source: .iana
            )
        }

        public static func vndMsWmdrmLicChlgReq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.lic-chlg-req",
                source: .iana
            )
        }

        public static func vndMsWmdrmLicResp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.lic-resp",
                source: .iana
            )
        }

        public static func vndMsWmdrmMeterChlgReq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.meter-chlg-req",
                source: .iana
            )
        }

        public static func vndMsWmdrmMeterResp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.meter-resp",
                source: .iana
            )
        }

        public static func vndMsWordDocumentMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-word.document.macroenabled.12",
                possibleExtensions: [
                    "docm"
                ],
                source: .iana
            )
        }

        public static func vndMsWordTemplateMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-word.template.macroenabled.12",
                possibleExtensions: [
                    "dotm"
                ],
                source: .iana
            )
        }

        public static func vndMsWorks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-works",
                possibleExtensions: [
                    "wps",
                    "wks",
                    "wcm",
                    "wdb",
                ],
                source: .iana
            )
        }

        public static func vndMsWpl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wpl",
                possibleExtensions: [
                    "wpl"
                ],
                source: .iana
            )
        }

        public static func vndMsXpsdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-xpsdocument",
                possibleExtensions: [
                    "xps"
                ],
                source: .iana
            )
        }

        public static func vndMsaDiskImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msa-disk-image",
                source: .iana
            )
        }

        public static func vndMseq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mseq",
                possibleExtensions: [
                    "mseq"
                ],
                source: .iana
            )
        }

        public static func vndMsgpack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msgpack",
                source: .iana
            )
        }

        public static func vndMsign() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msign",
                source: .iana
            )
        }

        public static func vndMultiadCreator() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.multiad.creator",
                source: .iana
            )
        }

        public static func vndMultiadCreatorCif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.multiad.creator.cif",
                source: .iana
            )
        }

        public static func vndMusicNiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.music-niff",
                source: .iana
            )
        }

        public static func vndMusician() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.musician",
                possibleExtensions: [
                    "mus"
                ],
                source: .iana
            )
        }

        public static func vndMuveeStyle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.muvee.style",
                possibleExtensions: [
                    "msty"
                ],
                source: .iana
            )
        }

        public static func vndMynfc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mynfc",
                possibleExtensions: [
                    "taglet"
                ],
                source: .iana
            )
        }

        public static func vndNacamarYbridJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nacamar.ybrid",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndNatoBindingdataobjectCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndNatoBindingdataobjectJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndNatoBindingdataobjectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "bdo"
                ],
                source: .iana
            )
        }

        public static func vndNatoOpenxmlformatsPackageIepdZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.openxmlformats-package.iepd",
                    suffix: "zip"
                ),
                source: .iana
            )
        }

        public static func vndNcdControl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ncd.control",
                source: .iana
            )
        }

        public static func vndNcdReference() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ncd.reference",
                source: .iana
            )
        }

        public static func vndNearstInvJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nearst.inv",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndNebumindLine() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nebumind.line",
                source: .iana
            )
        }

        public static func vndNervana() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nervana",
                source: .iana
            )
        }

        public static func vndNetfpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.netfpx",
                source: .iana
            )
        }

        public static func vndNeurolanguageNlu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.neurolanguage.nlu",
                possibleExtensions: [
                    "nlu"
                ],
                source: .iana
            )
        }

        public static func vndNimn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nimn",
                source: .iana
            )
        }

        public static func vndNintendoNitroRom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nintendo.nitro.rom",
                source: .iana
            )
        }

        public static func vndNintendoSnesRom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nintendo.snes.rom",
                source: .iana
            )
        }

        public static func vndNitf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nitf",
                possibleExtensions: [
                    "ntf",
                    "nitf",
                ],
                source: .iana
            )
        }

        public static func vndNoblenetDirectory() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-directory",
                possibleExtensions: [
                    "nnd"
                ],
                source: .iana
            )
        }

        public static func vndNoblenetSealer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-sealer",
                possibleExtensions: [
                    "nns"
                ],
                source: .iana
            )
        }

        public static func vndNoblenetWeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-web",
                possibleExtensions: [
                    "nnw"
                ],
                source: .iana
            )
        }

        public static func vndNokiaCatalogs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.catalogs",
                source: .iana
            )
        }

        public static func vndNokiaConmlWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.conml",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaConmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.conml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaIptvConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.iptv.config",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaIsdsRadioPresets() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.isds-radio-presets",
                source: .iana
            )
        }

        public static func vndNokiaLandmarkWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmark",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaLandmarkXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmark",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaLandmarkcollectionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmarkcollection",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaNGageAcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.n-gage.ac",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ac"
                ],
                source: .iana
            )
        }

        public static func vndNokiaNGageData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.n-gage.data",
                possibleExtensions: [
                    "ngdat"
                ],
                source: .iana
            )
        }

        public static func vndNokiaNGageSymbianInstall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.n-gage.symbian.install",
                possibleExtensions: [
                    "n-gage"
                ],
                source: .apache
            )
        }

        public static func vndNokiaNcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.ncd",
                source: .iana
            )
        }

        public static func vndNokiaPcdWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.pcd",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaPcdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.pcd",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndNokiaRadioPreset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.radio-preset",
                possibleExtensions: [
                    "rpst"
                ],
                source: .iana
            )
        }

        public static func vndNokiaRadioPresets() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.radio-presets",
                possibleExtensions: [
                    "rpss"
                ],
                source: .iana
            )
        }

        public static func vndNovadigmEdm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.edm",
                possibleExtensions: [
                    "edm"
                ],
                source: .iana
            )
        }

        public static func vndNovadigmEdx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.edx",
                possibleExtensions: [
                    "edx"
                ],
                source: .iana
            )
        }

        public static func vndNovadigmExt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.ext",
                possibleExtensions: [
                    "ext"
                ],
                source: .iana
            )
        }

        public static func vndNttLocalContentShare() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.content-share",
                source: .iana
            )
        }

        public static func vndNttLocalFileTransfer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.file-transfer",
                source: .iana
            )
        }

        public static func vndNttLocalOgwRemoteAccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.ogw_remote-access",
                source: .iana
            )
        }

        public static func vndNttLocalSipTaRemote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.sip-ta_remote",
                source: .iana
            )
        }

        public static func vndNttLocalSipTaTcpStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.sip-ta_tcp_stream",
                source: .iana
            )
        }

        public static func vndNubaltecNudokuGame() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nubaltec.nudoku-game",
                source: .iana
            )
        }

        public static func vndOaiWorkflows() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oai.workflows",
                source: .iana
            )
        }

        public static func vndOaiWorkflowsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oai.workflows",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOaiWorkflowsYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oai.workflows",
                    suffix: "yaml"
                ),
                source: .iana
            )
        }

        public static func vndOasisOpendocumentBase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.base",
                source: .iana
            )
        }

        public static func vndOasisOpendocumentChart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.chart",
                possibleExtensions: [
                    "odc"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentChartTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.chart-template",
                possibleExtensions: [
                    "otc"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentDatabase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.database",
                possibleExtensions: [
                    "odb"
                ],
                source: .apache
            )
        }

        public static func vndOasisOpendocumentFormula() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.formula",
                possibleExtensions: [
                    "odf"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentFormulaTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.formula-template",
                possibleExtensions: [
                    "odft"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentGraphics() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.graphics",
                possibleExtensions: [
                    "odg"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentGraphicsTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.graphics-template",
                possibleExtensions: [
                    "otg"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.image",
                possibleExtensions: [
                    "odi"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentImageTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.image-template",
                possibleExtensions: [
                    "oti"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.presentation",
                possibleExtensions: [
                    "odp"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentPresentationTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.presentation-template",
                possibleExtensions: [
                    "otp"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.spreadsheet",
                possibleExtensions: [
                    "ods"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentSpreadsheetTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.spreadsheet-template",
                possibleExtensions: [
                    "ots"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentText() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text",
                possibleExtensions: [
                    "odt"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentTextMaster() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-master",
                possibleExtensions: [
                    "odm"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentTextMasterTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-master-template",
                source: .iana
            )
        }

        public static func vndOasisOpendocumentTextTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-template",
                possibleExtensions: [
                    "ott"
                ],
                source: .iana
            )
        }

        public static func vndOasisOpendocumentTextWeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-web",
                possibleExtensions: [
                    "oth"
                ],
                source: .iana
            )
        }

        public static func vndObn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.obn",
                source: .iana
            )
        }

        public static func vndOcfCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ocf",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndOciImageManifestV1Json() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oci.image.manifest.v1",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOftnL10nJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oftn.l10n",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOipfContentaccessdownloadXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.contentaccessdownload",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfContentaccessstreamingXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.contentaccessstreaming",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfCspgHexbinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oipf.cspg-hexbinary",
                source: .iana
            )
        }

        public static func vndOipfDaeSvgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.dae.svg",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfDaeXhtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.dae.xhtml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfMippvcontrolmessageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.mippvcontrolmessage",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfPaeGem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oipf.pae.gem",
                source: .iana
            )
        }

        public static func vndOipfSpdiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.spdiscovery",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfSpdlistXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.spdlist",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfUeprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.ueprofile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOipfUserprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.userprofile",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOlpcSugar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.olpc-sugar",
                possibleExtensions: [
                    "xo"
                ],
                source: .iana
            )
        }

        public static func vndOmaScwsConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-config",
                source: .iana
            )
        }

        public static func vndOmaScwsHttpRequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-http-request",
                source: .iana
            )
        }

        public static func vndOmaScwsHttpResponse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-http-response",
                source: .iana
            )
        }

        public static func vndOmaBcastAssociatedProcedureParameterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.associated-procedure-parameter",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaBcastDrmTriggerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.drm-trigger",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func vndOmaBcastImdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.imd",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaBcastLtkm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.ltkm",
                source: .iana
            )
        }

        public static func vndOmaBcastNotificationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.notification",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaBcastProvisioningtrigger() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.provisioningtrigger",
                source: .iana
            )
        }

        public static func vndOmaBcastSgboot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.sgboot",
                source: .iana
            )
        }

        public static func vndOmaBcastSgddXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.sgdd",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaBcastSgdu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.sgdu",
                source: .iana
            )
        }

        public static func vndOmaBcastSimpleSymbolContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.simple-symbol-container",
                source: .iana
            )
        }

        public static func vndOmaBcastSmartcardTriggerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.smartcard-trigger",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func vndOmaBcastSprovXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.sprov",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaBcastStkm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.stkm",
                source: .iana
            )
        }

        public static func vndOmaCabAddressBookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-address-book",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaCabFeatureHandlerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-feature-handler",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaCabPccXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-pcc",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaCabSubsInviteXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-subs-invite",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaCabUserPrefsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-user-prefs",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaDcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.dcd",
                source: .iana
            )
        }

        public static func vndOmaDcdc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.dcdc",
                source: .iana
            )
        }

        public static func vndOmaDd2Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.dd2",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dd2"
                ],
                source: .iana
            )
        }

        public static func vndOmaDrmRisdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.drm.risd",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaGroupUsageListXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.group-usage-list",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaLwm2mCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndOmaLwm2mJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOmaLwm2mTlv() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "tlv"
                ),
                source: .iana
            )
        }

        public static func vndOmaPalXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.pal",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPocDetailedProgressReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.detailed-progress-report",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPocFinalReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.final-report",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPocGroupsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.groups",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPocInvocationDescriptorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.invocation-descriptor",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPocOptimizedProgressReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.optimized-progress-report",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaPush() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.push",
                source: .iana
            )
        }

        public static func vndOmaScidmMessagesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.scidm.messages",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmaXcapDirectoryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.xcap-directory",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmadsEmailXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-email",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmadsFileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-file",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmadsFolderXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-folder",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOmalocSuplInit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.omaloc-supl-init",
                source: .iana
            )
        }

        public static func vndOmsCellularCoseContentCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oms.cellular-cose-content",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndOnepager() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepager",
                source: .iana
            )
        }

        public static func vndOnepagertamp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertamp",
                source: .iana
            )
        }

        public static func vndOnepagertamx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertamx",
                source: .iana
            )
        }

        public static func vndOnepagertat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertat",
                source: .iana
            )
        }

        public static func vndOnepagertatp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertatp",
                source: .iana
            )
        }

        public static func vndOnepagertatx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertatx",
                source: .iana
            )
        }

        public static func vndOnvifMetadata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onvif.metadata",
                source: .iana
            )
        }

        public static func vndOpenbloxGameXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openblox.game",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "obgx"
                ],
                source: .iana
            )
        }

        public static func vndOpenbloxGameBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openblox.game-binary",
                source: .iana
            )
        }

        public static func vndOpeneyeOeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openeye.oeb",
                source: .iana
            )
        }

        public static func vndOpenofficeorgExtension() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openofficeorg.extension",
                possibleExtensions: [
                    "oxt"
                ],
                source: .apache
            )
        }

        public static func vndOpenprinttag() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openprinttag",
                source: .iana
            )
        }

        public static func vndOpenstreetmapDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openstreetmap.data",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "osm"
                ],
                source: .iana
            )
        }

        public static func vndOpentimestampsOts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.opentimestamps.ots",
                source: .iana
            )
        }

        public static func vndOpenvpiDspxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openvpi.dspx",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentCustomPropertiesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.custom-properties",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentCustomxmlpropertiesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.customxmlproperties",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentDrawingXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.drawing",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentDrawingmlChartXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.drawingml.chart",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlChartshapesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.chartshapes",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramcolorsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramcolors",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramdataXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramdata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramlayoutXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramlayout",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramstyleXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramstyle",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentExtendedPropertiesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.extended-properties",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlCommentauthorsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.commentauthors",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.comments",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlHandoutmasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.handoutmaster",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlNotesmasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.notesmaster",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlNotesslideXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.notesslide",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPresentation()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.presentation",
                possibleExtensions: [
                    "pptx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPresentationMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.presentation.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPrespropsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.presprops",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentPresentationmlSlide()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.slide",
                possibleExtensions: [
                    "sldx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slide",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlidelayoutXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slidelayout",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlidemasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slidemaster",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideshow()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.slideshow",
                possibleExtensions: [
                    "ppsx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideshowMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slideshow.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideupdateinfoXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slideupdateinfo",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTablestylesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.tablestyles",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTagsXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.tags",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.template",
                possibleExtensions: [
                    "potx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.template.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlViewpropsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.viewprops",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlCalcchainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.calcchain",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlChartsheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.chartsheet",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.comments",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlConnectionsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.connections",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlDialogsheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.dialogsheet",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlExternallinkXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.externallink",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcachedefinitionXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivotcachedefinition",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcacherecordsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivotcacherecords",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivottableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivottable",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlQuerytableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.querytable",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionheadersXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.revisionheaders",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionlogXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.revisionlog",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSharedstringsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sharedstrings",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                possibleExtensions: [
                    "xlsx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sheet.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetmetadataXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sheetmetadata",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlStylesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.styles",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTableXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.table",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTablesinglecellsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.tablesinglecells",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.spreadsheetml.template",
                possibleExtensions: [
                    "xltx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.template.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlUsernamesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.usernames",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlVolatiledependenciesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.volatiledependencies",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlWorksheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.worksheet",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentThemeXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.theme",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentThemeoverrideXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.themeoverride",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsOfficedocumentVmldrawing()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.openxmlformats-officedocument.vmldrawing",
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.comments",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocument()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.wordprocessingml.document",
                possibleExtensions: [
                    "docx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentGlossaryXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.document.glossary",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.document.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlEndnotesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.endnotes",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFonttableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.fonttable",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFooterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.footer",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFootnotesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.footnotes",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlNumberingXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.numbering",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlSettingsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.settings",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlStylesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.styles",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.wordprocessingml.template",
                possibleExtensions: [
                    "dotx"
                ],
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.template.main",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlWebsettingsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.websettings",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsPackageCorePropertiesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-package.core-properties",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func
            vndOpenxmlformatsPackageDigitalSignatureXmlsignatureXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-package.digital-signature-xmlsignature",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOpenxmlformatsPackageRelationshipsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-package.relationships",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOracleResourceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oracle.resource",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndOrangeIndata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.orange.indata",
                source: .iana
            )
        }

        public static func vndOsaNetdeploy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osa.netdeploy",
                source: .iana
            )
        }

        public static func vndOsgeoMapguidePackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgeo.mapguide.package",
                possibleExtensions: [
                    "mgp"
                ],
                source: .iana
            )
        }

        public static func vndOsgiBundle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.bundle",
                source: .iana
            )
        }

        public static func vndOsgiDp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.dp",
                possibleExtensions: [
                    "dp"
                ],
                source: .iana
            )
        }

        public static func vndOsgiSubsystem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.subsystem",
                possibleExtensions: [
                    "esa"
                ],
                source: .iana
            )
        }

        public static func vndOtpsCtKipXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.otps.ct-kip",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndOxliCountgraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oxli.countgraph",
                source: .iana
            )
        }

        public static func vndPagerdutyJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pagerduty",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndPalm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.palm",
                possibleExtensions: [
                    "pdb",
                    "pqa",
                    "oprc",
                ],
                source: .iana
            )
        }

        public static func vndPanoply() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.panoply",
                source: .iana
            )
        }

        public static func vndPaosXml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.paos.xml",
                source: .iana
            )
        }

        public static func vndPatentdive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.patentdive",
                source: .iana
            )
        }

        public static func vndPatientecommsdoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.patientecommsdoc",
                source: .iana
            )
        }

        public static func vndPawaafile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pawaafile",
                possibleExtensions: [
                    "paw"
                ],
                source: .iana
            )
        }

        public static func vndPcos() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pcos",
                source: .iana
            )
        }

        public static func vndPgFormat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pg.format",
                possibleExtensions: [
                    "str"
                ],
                source: .iana
            )
        }

        public static func vndPgOsasli() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pg.osasli",
                possibleExtensions: [
                    "ei6"
                ],
                source: .iana
            )
        }

        public static func vndPiaccessApplicationLicence() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.piaccess.application-licence",
                source: .iana
            )
        }

        public static func vndPicsel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.picsel",
                possibleExtensions: [
                    "efif"
                ],
                source: .iana
            )
        }

        public static func vndPmiWidget() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pmi.widget",
                possibleExtensions: [
                    "wg"
                ],
                source: .iana
            )
        }

        public static func vndPmtiles() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pmtiles",
                source: .iana
            )
        }

        public static func vndPocGroupAdvertisementXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.poc.group-advertisement",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndPocketlearn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pocketlearn",
                possibleExtensions: [
                    "plf"
                ],
                source: .iana
            )
        }

        public static func vndPowerbuilder6() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder6",
                possibleExtensions: [
                    "pbd"
                ],
                source: .iana
            )
        }

        public static func vndPowerbuilder6S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder6-s",
                source: .iana
            )
        }

        public static func vndPowerbuilder7() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder7",
                source: .iana
            )
        }

        public static func vndPowerbuilder7S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder7-s",
                source: .iana
            )
        }

        public static func vndPowerbuilder75() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder75",
                source: .iana
            )
        }

        public static func vndPowerbuilder75S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder75-s",
                source: .iana
            )
        }

        public static func vndPpSystemverifyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pp.systemverify",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "systemverify"
                ],
                source: .iana
            )
        }

        public static func vndPreminet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.preminet",
                source: .iana
            )
        }

        public static func vndPreviewsystemsBox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.previewsystems.box",
                possibleExtensions: [
                    "box"
                ],
                source: .iana
            )
        }

        public static func vndProcreateBrush() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.brush",
                possibleExtensions: [
                    "brush"
                ]
            )
        }

        public static func vndProcreateBrushset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.brushset",
                possibleExtensions: [
                    "brushset"
                ]
            )
        }

        public static func vndProcreateDream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.dream",
                possibleExtensions: [
                    "drm"
                ]
            )
        }

        public static func vndProjectGraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.project-graph",
                source: .iana
            )
        }

        public static func vndProteusMagazine() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.proteus.magazine",
                possibleExtensions: [
                    "mgz"
                ],
                source: .iana
            )
        }

        public static func vndPsfs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.psfs",
                source: .iana
            )
        }

        public static func vndPtMundusmundi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pt.mundusmundi",
                source: .iana
            )
        }

        public static func vndPublishareDeltaTree() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.publishare-delta-tree",
                possibleExtensions: [
                    "qps"
                ],
                source: .iana
            )
        }

        public static func vndPviPtid1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pvi.ptid1",
                possibleExtensions: [
                    "ptid"
                ],
                source: .iana
            )
        }

        public static func vndPwgMultiplexed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pwg-multiplexed",
                source: .iana
            )
        }

        public static func vndPwgXhtmlPrintXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pwg-xhtml-print",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xhtm"
                ],
                source: .iana
            )
        }

        public static func vndPyonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pyon",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndQualcommBrewAppRes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.qualcomm.brew-app-res",
                source: .iana
            )
        }

        public static func vndQuarantainenet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quarantainenet",
                source: .iana
            )
        }

        public static func vndQuarkQuarkxpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quark.quarkxpress",
                possibleExtensions: [
                    "qxd",
                    "qxt",
                    "qwd",
                    "qwt",
                    "qxl",
                    "qxb",
                ],
                source: .iana
            )
        }

        public static func vndQuobjectQuoxdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quobject-quoxdocument",
                source: .iana
            )
        }

        public static func vndR74nSandboxelsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.r74n.sandboxels",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.moml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlAuditXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlAuditConfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-conf",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlAuditConnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-conn",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlAuditDialogXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-dialog",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlAuditStreamXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-stream",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlConfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-conf",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogBaseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-base",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogFaxDetectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-fax-detect",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogFaxSendrecvXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-fax-sendrecv",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogGroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-group",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogSpeechXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-speech",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRadisysMsmlDialogTransformXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-transform",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndRainstorData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rainstor.data",
                source: .iana
            )
        }

        public static func vndRapid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rapid",
                source: .iana
            )
        }

        public static func vndRar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rar",
                possibleExtensions: [
                    "rar"
                ],
                source: .iana
            )
        }

        public static func vndRealvncBed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.realvnc.bed",
                possibleExtensions: [
                    "bed"
                ],
                source: .iana
            )
        }

        public static func vndRecordareMusicxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.recordare.musicxml",
                possibleExtensions: [
                    "mxl"
                ],
                source: .iana
            )
        }

        public static func vndRecordareMusicxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.recordare.musicxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "musicxml"
                ],
                source: .iana
            )
        }

        public static func vndRelpipe() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.relpipe",
                source: .iana
            )
        }

        public static func vndRenlearnRlprint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.renlearn.rlprint",
                source: .iana
            )
        }

        public static func vndResilientLogic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.resilient.logic",
                source: .iana
            )
        }

        public static func vndRestfulJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.restful",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndRigCryptonote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rig.cryptonote",
                possibleExtensions: [
                    "cryptonote"
                ],
                source: .iana
            )
        }

        public static func vndRimCod() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rim.cod",
                possibleExtensions: [
                    "cod"
                ],
                source: .apache
            )
        }

        public static func vndRnRealmedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realmedia",
                possibleExtensions: [
                    "rm"
                ],
                source: .apache
            )
        }

        public static func vndRnRealmediaVbr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realmedia-vbr",
                possibleExtensions: [
                    "rmvb"
                ],
                source: .apache
            )
        }

        public static func vndRoute66Link66Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.route66.link66",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "link66"
                ],
                source: .iana
            )
        }

        public static func vndRs274x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rs-274x",
                source: .iana
            )
        }

        public static func vndRuckusDownload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ruckus.download",
                source: .iana
            )
        }

        public static func vndS3sms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.s3sms",
                source: .iana
            )
        }

        public static func vndSailingtrackerTrack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sailingtracker.track",
                possibleExtensions: [
                    "st"
                ],
                source: .iana
            )
        }

        public static func vndSar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sar",
                source: .iana
            )
        }

        public static func vndSbmCid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sbm.cid",
                source: .iana
            )
        }

        public static func vndSbmMid2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sbm.mid2",
                source: .iana
            )
        }

        public static func vndScribus() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.scribus",
                source: .iana
            )
        }

        public static func vndSealed3df() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.3df",
                source: .iana
            )
        }

        public static func vndSealedCsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.csf",
                source: .iana
            )
        }

        public static func vndSealedDoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.doc",
                source: .iana
            )
        }

        public static func vndSealedEml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.eml",
                source: .iana
            )
        }

        public static func vndSealedMht() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mht",
                source: .iana
            )
        }

        public static func vndSealedNet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.net",
                source: .iana
            )
        }

        public static func vndSealedPpt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.ppt",
                source: .iana
            )
        }

        public static func vndSealedTiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.tiff",
                source: .iana
            )
        }

        public static func vndSealedXls() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.xls",
                source: .iana
            )
        }

        public static func vndSealedmediaSoftsealHtml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.html",
                source: .iana
            )
        }

        public static func vndSealedmediaSoftsealPdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.pdf",
                source: .iana
            )
        }

        public static func vndSeemail() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.seemail",
                possibleExtensions: [
                    "see"
                ],
                source: .iana
            )
        }

        public static func vndSeisJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.seis",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndSema() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sema",
                possibleExtensions: [
                    "sema"
                ],
                source: .iana
            )
        }

        public static func vndSemd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.semd",
                possibleExtensions: [
                    "semd"
                ],
                source: .iana
            )
        }

        public static func vndSemf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.semf",
                possibleExtensions: [
                    "semf"
                ],
                source: .iana
            )
        }

        public static func vndShadeSaveFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shade-save-file",
                source: .iana
            )
        }

        public static func vndShanaInformedFormdata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.formdata",
                possibleExtensions: [
                    "ifm"
                ],
                source: .iana
            )
        }

        public static func vndShanaInformedFormtemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.formtemplate",
                possibleExtensions: [
                    "itp"
                ],
                source: .iana
            )
        }

        public static func vndShanaInformedInterchange() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.interchange",
                possibleExtensions: [
                    "iif"
                ],
                source: .iana
            )
        }

        public static func vndShanaInformedPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.package",
                possibleExtensions: [
                    "ipk"
                ],
                source: .iana
            )
        }

        public static func vndShootproofJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.shootproof",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndShopkickJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.shopkick",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndShp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shp",
                source: .iana
            )
        }

        public static func vndShx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shx",
                source: .iana
            )
        }

        public static func vndSigrokSession() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sigrok.session",
                source: .iana
            )
        }

        public static func vndSimtechMindmapper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.simtech-mindmapper",
                possibleExtensions: [
                    "twd",
                    "twds",
                ],
                source: .iana
            )
        }

        public static func vndSirenJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.siren",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndSirtxVmv0() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sirtx.vmv0",
                source: .iana
            )
        }

        public static func vndSketchometry() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sketchometry",
                source: .iana
            )
        }

        public static func vndSmaf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smaf",
                possibleExtensions: [
                    "mmf"
                ],
                source: .iana
            )
        }

        public static func vndSmartNotebook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smart.notebook",
                source: .iana
            )
        }

        public static func vndSmartTeacher() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smart.teacher",
                possibleExtensions: [
                    "teacher"
                ],
                source: .iana
            )
        }

        public static func vndSmintioPortalsArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smintio.portals.archive",
                source: .iana
            )
        }

        public static func vndSnesdevPageTable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.snesdev-page-table",
                source: .iana
            )
        }

        public static func vndSoftware602FillerFormXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.software602.filler.form",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "fo"
                ],
                source: .iana
            )
        }

        public static func vndSoftware602FillerFormXmlZip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.software602.filler.form-xml-zip",
                source: .iana
            )
        }

        public static func vndSolentSdkmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.solent.sdkm",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sdkm",
                    "sdkd",
                ],
                source: .iana
            )
        }

        public static func vndSpotfireDxp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.spotfire.dxp",
                possibleExtensions: [
                    "dxp"
                ],
                source: .iana
            )
        }

        public static func vndSpotfireSfs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.spotfire.sfs",
                possibleExtensions: [
                    "sfs"
                ],
                source: .iana
            )
        }

        public static func vndSqlite3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sqlite3",
                possibleExtensions: [
                    "sqlite",
                    "sqlite3",
                ],
                source: .iana
            )
        }

        public static func vndSssCod() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-cod",
                source: .iana
            )
        }

        public static func vndSssDtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-dtf",
                source: .iana
            )
        }

        public static func vndSssNtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-ntf",
                source: .iana
            )
        }

        public static func vndStardivisionCalc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.calc",
                possibleExtensions: [
                    "sdc"
                ],
                source: .apache
            )
        }

        public static func vndStardivisionDraw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.draw",
                possibleExtensions: [
                    "sda"
                ],
                source: .apache
            )
        }

        public static func vndStardivisionImpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.impress",
                possibleExtensions: [
                    "sdd"
                ],
                source: .apache
            )
        }

        public static func vndStardivisionMath() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.math",
                possibleExtensions: [
                    "smf"
                ],
                source: .apache
            )
        }

        public static func vndStardivisionWriter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.writer",
                possibleExtensions: [
                    "sdw",
                    "vor",
                ],
                source: .apache
            )
        }

        public static func vndStardivisionWriterGlobal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.writer-global",
                possibleExtensions: [
                    "sgl"
                ],
                source: .apache
            )
        }

        public static func vndStepmaniaPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stepmania.package",
                possibleExtensions: [
                    "smzip"
                ],
                source: .iana
            )
        }

        public static func vndStepmaniaStepchart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stepmania.stepchart",
                possibleExtensions: [
                    "sm"
                ],
                source: .iana
            )
        }

        public static func vndStreetStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.street-stream",
                source: .iana
            )
        }

        public static func vndSunWadlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.sun.wadl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wadl"
                ],
                source: .iana
            )
        }

        public static func vndSunXmlCalc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.calc",
                possibleExtensions: [
                    "sxc"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlCalcTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.calc.template",
                possibleExtensions: [
                    "stc"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlDraw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.draw",
                possibleExtensions: [
                    "sxd"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlDrawTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.draw.template",
                possibleExtensions: [
                    "std"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlImpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.impress",
                possibleExtensions: [
                    "sxi"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlImpressTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.impress.template",
                possibleExtensions: [
                    "sti"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlMath() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.math",
                possibleExtensions: [
                    "sxm"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlWriter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer",
                possibleExtensions: [
                    "sxw"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlWriterGlobal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer.global",
                possibleExtensions: [
                    "sxg"
                ],
                source: .apache
            )
        }

        public static func vndSunXmlWriterTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer.template",
                possibleExtensions: [
                    "stw"
                ],
                source: .apache
            )
        }

        public static func vndSuperfileSuper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.superfile.super",
                source: .iana
            )
        }

        public static func vndSusCalendar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sus-calendar",
                possibleExtensions: [
                    "sus",
                    "susp",
                ],
                source: .iana
            )
        }

        public static func vndSvd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.svd",
                possibleExtensions: [
                    "svd"
                ],
                source: .iana
            )
        }

        public static func vndSwiftviewIcs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.swiftview-ics",
                source: .iana
            )
        }

        public static func vndSybylMol2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sybyl.mol2",
                source: .iana
            )
        }

        public static func vndSycleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.sycle",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndSyftJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syft",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndSymbianInstall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.symbian.install",
                possibleExtensions: [
                    "sis",
                    "sisx",
                ],
                source: .apache
            )
        }

        public static func vndSyncmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsm"
                ],
                source: .iana
            )
        }

        public static func vndSyncmlDmWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dm",
                    suffix: "wbxml"
                ),
                possibleExtensions: [
                    "bdm"
                ],
                source: .iana
            )
        }

        public static func vndSyncmlDmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dm",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdm"
                ],
                source: .iana
            )
        }

        public static func vndSyncmlDmNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.syncml.dm.notification",
                source: .iana
            )
        }

        public static func vndSyncmlDmddfWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmddf",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndSyncmlDmddfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmddf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ddf"
                ],
                source: .iana
            )
        }

        public static func vndSyncmlDmtndsWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmtnds",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndSyncmlDmtndsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmtnds",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndSyncmlDsNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.syncml.ds.notification",
                source: .iana
            )
        }

        public static func vndTableschemaJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.tableschema",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndTaoIntentModuleArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tao.intent-module-archive",
                possibleExtensions: [
                    "tao"
                ],
                source: .iana
            )
        }

        public static func vndTcpdumpPcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tcpdump.pcap",
                possibleExtensions: [
                    "pcap",
                    "cap",
                    "dmp",
                ],
                source: .iana
            )
        }

        public static func vndThinkCellPpttcJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.think-cell.ppttc",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndTmdMediaflexApiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.tmd.mediaflex.api",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndTml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tml",
                source: .iana
            )
        }

        public static func vndTmobileLivetv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tmobile-livetv",
                possibleExtensions: [
                    "tmo"
                ],
                source: .iana
            )
        }

        public static func vndTriOnesource() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tri.onesource",
                source: .iana
            )
        }

        public static func vndTridTpt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trid.tpt",
                possibleExtensions: [
                    "tpt"
                ],
                source: .iana
            )
        }

        public static func vndTriscapeMxs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.triscape.mxs",
                possibleExtensions: [
                    "mxs"
                ],
                source: .iana
            )
        }

        public static func vndTrueapp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trueapp",
                possibleExtensions: [
                    "tra"
                ],
                source: .iana
            )
        }

        public static func vndTruedoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.truedoc",
                source: .iana
            )
        }

        public static func vndUbisoftWebplayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ubisoft.webplayer",
                source: .iana
            )
        }

        public static func vndUfdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ufdl",
                possibleExtensions: [
                    "ufd",
                    "ufdl",
                ],
                source: .iana
            )
        }

        public static func vndUicOsdmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.uic.osdm",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndUiqTheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uiq.theme",
                possibleExtensions: [
                    "utz"
                ],
                source: .iana
            )
        }

        public static func vndUmajin() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.umajin",
                possibleExtensions: [
                    "umj"
                ],
                source: .iana
            )
        }

        public static func vndUnity() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.unity",
                possibleExtensions: [
                    "unityweb"
                ],
                source: .iana
            )
        }

        public static func vndUomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.uoml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "uoml",
                    "uo",
                ],
                source: .iana
            )
        }

        public static func vndUplanetAlert() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.alert",
                source: .iana
            )
        }

        public static func vndUplanetAlertWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.alert-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetBearerChoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.bearer-choice",
                source: .iana
            )
        }

        public static func vndUplanetBearerChoiceWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.bearer-choice-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetCacheop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.cacheop",
                source: .iana
            )
        }

        public static func vndUplanetCacheopWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.cacheop-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetChannel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.channel",
                source: .iana
            )
        }

        public static func vndUplanetChannelWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.channel-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetList() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.list",
                source: .iana
            )
        }

        public static func vndUplanetListWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.list-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetListcmd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.listcmd",
                source: .iana
            )
        }

        public static func vndUplanetListcmdWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.listcmd-wbxml",
                source: .iana
            )
        }

        public static func vndUplanetSignal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.signal",
                source: .iana
            )
        }

        public static func vndUriMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uri-map",
                source: .iana
            )
        }

        public static func vndValveSourceMaterial() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.material",
                source: .iana
            )
        }

        public static func vndVcx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vcx",
                possibleExtensions: [
                    "vcx"
                ],
                source: .iana
            )
        }

        public static func vndVdStudy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vd-study",
                source: .iana
            )
        }

        public static func vndVectorworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vectorworks",
                source: .iana
            )
        }

        public static func vndVelJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.vel",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndVeraisonTsmReportCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veraison.tsm-report",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func vndVeraisonTsmReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veraison.tsm-report",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndVerifierAttestationJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.verifier-attestation",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func vndVerimatrixVcas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.verimatrix.vcas",
                source: .iana
            )
        }

        public static func vndVeritoneAionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veritone.aion",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndVeryantThin() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.veryant.thin",
                source: .iana
            )
        }

        public static func vndVesEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ves.encrypted",
                source: .iana
            )
        }

        public static func vndVidsoftVidconference() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vidsoft.vidconference",
                source: .iana
            )
        }

        public static func vndVisio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.visio",
                possibleExtensions: [
                    "vsd",
                    "vst",
                    "vss",
                    "vsw",
                    "vsdx",
                    "vtx",
                ],
                source: .iana
            )
        }

        public static func vndVisionary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.visionary",
                possibleExtensions: [
                    "vis"
                ],
                source: .iana
            )
        }

        public static func vndVividenceScriptfile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vividence.scriptfile",
                source: .iana
            )
        }

        public static func vndVocalshaperVsp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vocalshaper.vsp4",
                source: .iana
            )
        }

        public static func vndVsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vsf",
                possibleExtensions: [
                    "vsf"
                ],
                source: .iana
            )
        }

        public static func vndVuq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vuq",
                source: .iana
            )
        }

        public static func vndWantverse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wantverse",
                source: .iana
            )
        }

        public static func vndWapSic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.sic",
                source: .iana
            )
        }

        public static func vndWapSlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.slc",
                source: .iana
            )
        }

        public static func vndWapWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wbxml",
                possibleExtensions: [
                    "wbxml"
                ],
                source: .iana
            )
        }

        public static func vndWapWmlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlc",
                possibleExtensions: [
                    "wmlc"
                ],
                source: .iana
            )
        }

        public static func vndWapWmlscriptc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlscriptc",
                possibleExtensions: [
                    "wmlsc"
                ],
                source: .iana
            )
        }

        public static func vndWasmflowWafl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wasmflow.wafl",
                source: .iana
            )
        }

        public static func vndWebturbo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.webturbo",
                possibleExtensions: [
                    "wtb"
                ],
                source: .iana
            )
        }

        public static func vndWfaDpp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.dpp",
                source: .iana
            )
        }

        public static func vndWfaP2p() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.p2p",
                source: .iana
            )
        }

        public static func vndWfaWsc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.wsc",
                source: .iana
            )
        }

        public static func vndWindowsDevicepairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.windows.devicepairing",
                source: .iana
            )
        }

        public static func vndWmap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmap",
                source: .iana
            )
        }

        public static func vndWmc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmc",
                source: .iana
            )
        }

        public static func vndWmfBootstrap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmf.bootstrap",
                source: .iana
            )
        }

        public static func vndWolframMathematica() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.mathematica",
                source: .iana
            )
        }

        public static func vndWolframMathematicaPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.mathematica.package",
                source: .iana
            )
        }

        public static func vndWolframPlayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.player",
                possibleExtensions: [
                    "nbp"
                ],
                source: .iana
            )
        }

        public static func vndWordlift() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wordlift",
                source: .iana
            )
        }

        public static func vndWordperfect() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wordperfect",
                possibleExtensions: [
                    "wpd"
                ],
                source: .iana
            )
        }

        public static func vndWqd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wqd",
                possibleExtensions: [
                    "wqd"
                ],
                source: .iana
            )
        }

        public static func vndWrqHp3000Labelled() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wrq-hp3000-labelled",
                source: .iana
            )
        }

        public static func vndWtStf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wt.stf",
                possibleExtensions: [
                    "stf"
                ],
                source: .iana
            )
        }

        public static func vndWvCspWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.csp",
                    suffix: "wbxml"
                ),
                source: .iana
            )
        }

        public static func vndWvCspXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.csp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndWvSspXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.ssp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndXacmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.xacml",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vndXara() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xara",
                possibleExtensions: [
                    "xar"
                ],
                source: .iana
            )
        }

        public static func vndXarinCpj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xarin.cpj",
                source: .iana
            )
        }

        public static func vndXecretsEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xecrets-encrypted",
                source: .iana
            )
        }

        public static func vndXfdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xfdl",
                possibleExtensions: [
                    "xfdl"
                ],
                source: .iana
            )
        }

        public static func vndXfdlWebform() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xfdl.webform",
                source: .iana
            )
        }

        public static func vndXmiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.xmi",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func vndXmpieCpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.cpkg",
                source: .iana
            )
        }

        public static func vndXmpieDpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.dpkg",
                source: .iana
            )
        }

        public static func vndXmpiePlan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.plan",
                source: .iana
            )
        }

        public static func vndXmpiePpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.ppkg",
                source: .iana
            )
        }

        public static func vndXmpieXlim() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.xlim",
                source: .iana
            )
        }

        public static func vndYamahaHvDic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-dic",
                possibleExtensions: [
                    "hvd"
                ],
                source: .iana
            )
        }

        public static func vndYamahaHvScript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-script",
                possibleExtensions: [
                    "hvs"
                ],
                source: .iana
            )
        }

        public static func vndYamahaHvVoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-voice",
                possibleExtensions: [
                    "hvp"
                ],
                source: .iana
            )
        }

        public static func vndYamahaOpenscoreformat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.openscoreformat",
                possibleExtensions: [
                    "osf"
                ],
                source: .iana
            )
        }

        public static func vndYamahaOpenscoreformatOsfpvgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.yamaha.openscoreformat.osfpvg",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "osfpvg"
                ],
                source: .iana
            )
        }

        public static func vndYamahaRemoteSetup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.remote-setup",
                source: .iana
            )
        }

        public static func vndYamahaSmafAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.smaf-audio",
                possibleExtensions: [
                    "saf"
                ],
                source: .iana
            )
        }

        public static func vndYamahaSmafPhrase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.smaf-phrase",
                possibleExtensions: [
                    "spf"
                ],
                source: .iana
            )
        }

        public static func vndYamahaThroughNgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.through-ngn",
                source: .iana
            )
        }

        public static func vndYamahaTunnelUdpencap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.tunnel-udpencap",
                source: .iana
            )
        }

        public static func vndYaoweme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yaoweme",
                source: .iana
            )
        }

        public static func vndYellowriverCustomMenu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yellowriver-custom-menu",
                possibleExtensions: [
                    "cmp"
                ],
                source: .iana
            )
        }

        public static func vndZul() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zul",
                possibleExtensions: [
                    "zir",
                    "zirz",
                ],
                source: .iana
            )
        }

        public static func vndZzazzDeckXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.zzazz.deck",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "zaz"
                ],
                source: .iana
            )
        }

        public static func voicexmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voicexml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "vxml"
                ],
                source: .iana
            )
        }

        public static func voucherCmsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voucher-cms",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func voucherJwsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voucher-jws",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func vp() -> MediaType {
            .init(
                type: name,
                subtype: "vp",
                source: .iana
            )
        }

        public static func vpCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vp",
                    suffix: "cose"
                ),
                source: .iana
            )
        }

        public static func vpJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vp",
                    suffix: "jwt"
                ),
                source: .iana
            )
        }

        public static func vqRtcpxr() -> MediaType {
            .init(
                type: name,
                subtype: "vq-rtcpxr",
                source: .iana
            )
        }

        public static func wasm() -> MediaType {
            .init(
                type: name,
                subtype: "wasm",
                possibleExtensions: [
                    "wasm"
                ],
                source: .iana
            )
        }

        public static func watcherinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "watcherinfo",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wif"
                ],
                source: .iana
            )
        }

        public static func webpushOptionsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "webpush-options",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func whoisppQuery() -> MediaType {
            .init(
                type: name,
                subtype: "whoispp-query",
                source: .iana
            )
        }

        public static func whoisppResponse() -> MediaType {
            .init(
                type: name,
                subtype: "whoispp-response",
                source: .iana
            )
        }

        public static func widget() -> MediaType {
            .init(
                type: name,
                subtype: "widget",
                possibleExtensions: [
                    "wgt"
                ],
                source: .iana
            )
        }

        public static func winhlp() -> MediaType {
            .init(
                type: name,
                subtype: "winhlp",
                possibleExtensions: [
                    "hlp"
                ],
                source: .apache
            )
        }

        public static func wita() -> MediaType {
            .init(
                type: name,
                subtype: "wita",
                source: .iana
            )
        }

        public static func wordperfect51() -> MediaType {
            .init(
                type: name,
                subtype: "wordperfect5.1",
                source: .iana
            )
        }

        public static func wsdlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "wsdl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wsdl"
                ],
                source: .iana
            )
        }

        public static func wspolicyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "wspolicy",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wspolicy"
                ],
                source: .iana
            )
        }

        public static func x7zCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-7z-compressed",
                possibleExtensions: [
                    "7z"
                ],
                source: .apache
            )
        }

        public static func xAbiword() -> MediaType {
            .init(
                type: name,
                subtype: "x-abiword",
                possibleExtensions: [
                    "abw"
                ],
                source: .apache
            )
        }

        public static func xAceCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-ace-compressed",
                possibleExtensions: [
                    "ace"
                ],
                source: .apache
            )
        }

        public static func xAmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-amf",
                source: .apache
            )
        }

        public static func xAppleDiskimage() -> MediaType {
            .init(
                type: name,
                subtype: "x-apple-diskimage",
                possibleExtensions: [
                    "dmg"
                ],
                source: .apache
            )
        }

        public static func xArj() -> MediaType {
            .init(
                type: name,
                subtype: "x-arj",
                possibleExtensions: [
                    "arj"
                ]
            )
        }

        public static func xAuthorwareBin() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-bin",
                possibleExtensions: [
                    "aab",
                    "x32",
                    "u32",
                    "vox",
                ],
                source: .apache
            )
        }

        public static func xAuthorwareMap() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-map",
                possibleExtensions: [
                    "aam"
                ],
                source: .apache
            )
        }

        public static func xAuthorwareSeg() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-seg",
                possibleExtensions: [
                    "aas"
                ],
                source: .apache
            )
        }

        public static func xBcpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-bcpio",
                possibleExtensions: [
                    "bcpio"
                ],
                source: .apache
            )
        }

        public static func xBdoc() -> MediaType {
            .init(
                type: name,
                subtype: "x-bdoc",
                possibleExtensions: [
                    "bdoc"
                ]
            )
        }

        public static func xBittorrent() -> MediaType {
            .init(
                type: name,
                subtype: "x-bittorrent",
                possibleExtensions: [
                    "torrent"
                ],
                source: .apache
            )
        }

        public static func xBlender() -> MediaType {
            .init(
                type: name,
                subtype: "x-blender",
                possibleExtensions: [
                    "blend"
                ]
            )
        }

        public static func xBlorb() -> MediaType {
            .init(
                type: name,
                subtype: "x-blorb",
                possibleExtensions: [
                    "blb",
                    "blorb",
                ],
                source: .apache
            )
        }

        public static func xBzip() -> MediaType {
            .init(
                type: name,
                subtype: "x-bzip",
                possibleExtensions: [
                    "bz"
                ],
                source: .apache
            )
        }

        public static func xBzip2() -> MediaType {
            .init(
                type: name,
                subtype: "x-bzip2",
                possibleExtensions: [
                    "bz2",
                    "boz",
                ],
                source: .apache
            )
        }

        public static func xCbr() -> MediaType {
            .init(
                type: name,
                subtype: "x-cbr",
                possibleExtensions: [
                    "cbr",
                    "cba",
                    "cbt",
                    "cbz",
                    "cb7",
                ],
                source: .apache
            )
        }

        public static func xCdlink() -> MediaType {
            .init(
                type: name,
                subtype: "x-cdlink",
                possibleExtensions: [
                    "vcd"
                ],
                source: .apache
            )
        }

        public static func xCfsCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-cfs-compressed",
                possibleExtensions: [
                    "cfs"
                ],
                source: .apache
            )
        }

        public static func xChat() -> MediaType {
            .init(
                type: name,
                subtype: "x-chat",
                possibleExtensions: [
                    "chat"
                ],
                source: .apache
            )
        }

        public static func xChessPgn() -> MediaType {
            .init(
                type: name,
                subtype: "x-chess-pgn",
                possibleExtensions: [
                    "pgn"
                ],
                source: .apache
            )
        }

        public static func xChromeExtension() -> MediaType {
            .init(
                type: name,
                subtype: "x-chrome-extension",
                possibleExtensions: [
                    "crx"
                ]
            )
        }

        public static func xCocoa() -> MediaType {
            .init(
                type: name,
                subtype: "x-cocoa",
                possibleExtensions: [
                    "cco"
                ],
                source: .nginx
            )
        }

        public static func xCompress() -> MediaType {
            .init(
                type: name,
                subtype: "x-compress",
                source: .apache
            )
        }

        public static func xCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-compressed",
                possibleExtensions: [
                    "rar"
                ]
            )
        }

        public static func xConference() -> MediaType {
            .init(
                type: name,
                subtype: "x-conference",
                possibleExtensions: [
                    "nsc"
                ],
                source: .apache
            )
        }

        public static func xCpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-cpio",
                possibleExtensions: [
                    "cpio"
                ],
                source: .apache
            )
        }

        public static func xCsh() -> MediaType {
            .init(
                type: name,
                subtype: "x-csh",
                possibleExtensions: [
                    "csh"
                ],
                source: .apache
            )
        }

        public static func xDeb() -> MediaType {
            .init(
                type: name,
                subtype: "x-deb"
            )
        }

        public static func xDebianPackage() -> MediaType {
            .init(
                type: name,
                subtype: "x-debian-package",
                possibleExtensions: [
                    "deb",
                    "udeb",
                ],
                source: .apache
            )
        }

        public static func xDgcCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-dgc-compressed",
                possibleExtensions: [
                    "dgc"
                ],
                source: .apache
            )
        }

        public static func xDirector() -> MediaType {
            .init(
                type: name,
                subtype: "x-director",
                possibleExtensions: [
                    "dir",
                    "dcr",
                    "dxr",
                    "cst",
                    "cct",
                    "cxt",
                    "w3d",
                    "fgd",
                    "swa",
                ],
                source: .apache
            )
        }

        public static func xDoom() -> MediaType {
            .init(
                type: name,
                subtype: "x-doom",
                possibleExtensions: [
                    "wad"
                ],
                source: .apache
            )
        }

        public static func xDtbncxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbncx",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "ncx"
                ],
                source: .apache
            )
        }

        public static func xDtbookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbook",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "dtb"
                ],
                source: .apache
            )
        }

        public static func xDtbresourceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbresource",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "res"
                ],
                source: .apache
            )
        }

        public static func xDvi() -> MediaType {
            .init(
                type: name,
                subtype: "x-dvi",
                possibleExtensions: [
                    "dvi"
                ],
                source: .apache
            )
        }

        public static func xEnvoy() -> MediaType {
            .init(
                type: name,
                subtype: "x-envoy",
                possibleExtensions: [
                    "evy"
                ],
                source: .apache
            )
        }

        public static func xEva() -> MediaType {
            .init(
                type: name,
                subtype: "x-eva",
                possibleExtensions: [
                    "eva"
                ],
                source: .apache
            )
        }

        public static func xFontBdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-bdf",
                possibleExtensions: [
                    "bdf"
                ],
                source: .apache
            )
        }

        public static func xFontDos() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-dos",
                source: .apache
            )
        }

        public static func xFontFramemaker() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-framemaker",
                source: .apache
            )
        }

        public static func xFontGhostscript() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-ghostscript",
                possibleExtensions: [
                    "gsf"
                ],
                source: .apache
            )
        }

        public static func xFontLibgrx() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-libgrx",
                source: .apache
            )
        }

        public static func xFontLinuxPsf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-linux-psf",
                possibleExtensions: [
                    "psf"
                ],
                source: .apache
            )
        }

        public static func xFontPcf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-pcf",
                possibleExtensions: [
                    "pcf"
                ],
                source: .apache
            )
        }

        public static func xFontSnf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-snf",
                possibleExtensions: [
                    "snf"
                ],
                source: .apache
            )
        }

        public static func xFontSpeedo() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-speedo",
                source: .apache
            )
        }

        public static func xFontSunosNews() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-sunos-news",
                source: .apache
            )
        }

        public static func xFontType1() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-type1",
                possibleExtensions: [
                    "pfa",
                    "pfb",
                    "pfm",
                    "afm",
                ],
                source: .apache
            )
        }

        public static func xFontVfont() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-vfont",
                source: .apache
            )
        }

        public static func xFreearc() -> MediaType {
            .init(
                type: name,
                subtype: "x-freearc",
                possibleExtensions: [
                    "arc"
                ],
                source: .apache
            )
        }

        public static func xFuturesplash() -> MediaType {
            .init(
                type: name,
                subtype: "x-futuresplash",
                possibleExtensions: [
                    "spl"
                ],
                source: .apache
            )
        }

        public static func xGcaCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-gca-compressed",
                possibleExtensions: [
                    "gca"
                ],
                source: .apache
            )
        }

        public static func xGlulx() -> MediaType {
            .init(
                type: name,
                subtype: "x-glulx",
                possibleExtensions: [
                    "ulx"
                ],
                source: .apache
            )
        }

        public static func xGnumeric() -> MediaType {
            .init(
                type: name,
                subtype: "x-gnumeric",
                possibleExtensions: [
                    "gnumeric"
                ],
                source: .apache
            )
        }

        public static func xGrampsXml() -> MediaType {
            .init(
                type: name,
                subtype: "x-gramps-xml",
                possibleExtensions: [
                    "gramps"
                ],
                source: .apache
            )
        }

        public static func xGtar() -> MediaType {
            .init(
                type: name,
                subtype: "x-gtar",
                possibleExtensions: [
                    "gtar"
                ],
                source: .apache
            )
        }

        public static func xGzip() -> MediaType {
            .init(
                type: name,
                subtype: "x-gzip",
                source: .apache
            )
        }

        public static func xHdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-hdf",
                possibleExtensions: [
                    "hdf"
                ],
                source: .apache
            )
        }

        public static func xHttpdPhp() -> MediaType {
            .init(
                type: name,
                subtype: "x-httpd-php",
                possibleExtensions: [
                    "php"
                ]
            )
        }

        public static func xInstallInstructions() -> MediaType {
            .init(
                type: name,
                subtype: "x-install-instructions",
                possibleExtensions: [
                    "install"
                ],
                source: .apache
            )
        }

        public static func xIpynbJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-ipynb",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "ipynb"
                ]
            )
        }

        public static func xIso9660Image() -> MediaType {
            .init(
                type: name,
                subtype: "x-iso9660-image",
                possibleExtensions: [
                    "iso"
                ],
                source: .apache
            )
        }

        public static func xIworkKeynoteSffkey() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-keynote-sffkey",
                possibleExtensions: [
                    "key"
                ]
            )
        }

        public static func xIworkNumbersSffnumbers() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-numbers-sffnumbers",
                possibleExtensions: [
                    "numbers"
                ]
            )
        }

        public static func xIworkPagesSffpages() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-pages-sffpages",
                possibleExtensions: [
                    "pages"
                ]
            )
        }

        public static func xJavaArchiveDiff() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-archive-diff",
                possibleExtensions: [
                    "jardiff"
                ],
                source: .nginx
            )
        }

        public static func xJavaJnlpFile() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-jnlp-file",
                possibleExtensions: [
                    "jnlp"
                ],
                source: .apache
            )
        }

        public static func xJavascript() -> MediaType {
            .init(
                type: name,
                subtype: "x-javascript"
            )
        }

        public static func xKeepass2() -> MediaType {
            .init(
                type: name,
                subtype: "x-keepass2",
                possibleExtensions: [
                    "kdbx"
                ]
            )
        }

        public static func xLatex() -> MediaType {
            .init(
                type: name,
                subtype: "x-latex",
                possibleExtensions: [
                    "latex"
                ],
                source: .apache
            )
        }

        public static func xLuaBytecode() -> MediaType {
            .init(
                type: name,
                subtype: "x-lua-bytecode",
                possibleExtensions: [
                    "luac"
                ]
            )
        }

        public static func xLzhCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-lzh-compressed",
                possibleExtensions: [
                    "lzh",
                    "lha",
                ],
                source: .apache
            )
        }

        public static func xMakeself() -> MediaType {
            .init(
                type: name,
                subtype: "x-makeself",
                possibleExtensions: [
                    "run"
                ],
                source: .nginx
            )
        }

        public static func xMie() -> MediaType {
            .init(
                type: name,
                subtype: "x-mie",
                possibleExtensions: [
                    "mie"
                ],
                source: .apache
            )
        }

        public static func xMobipocketEbook() -> MediaType {
            .init(
                type: name,
                subtype: "x-mobipocket-ebook",
                possibleExtensions: [
                    "prc",
                    "mobi",
                ],
                source: .apache
            )
        }

        public static func xMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "x-mpegurl"
            )
        }

        public static func xMsApplication() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-application",
                possibleExtensions: [
                    "application"
                ],
                source: .apache
            )
        }

        public static func xMsShortcut() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-shortcut",
                possibleExtensions: [
                    "lnk"
                ],
                source: .apache
            )
        }

        public static func xMsWmd() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmd",
                possibleExtensions: [
                    "wmd"
                ],
                source: .apache
            )
        }

        public static func xMsWmz() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmz",
                possibleExtensions: [
                    "wmz"
                ],
                source: .apache
            )
        }

        public static func xMsXbap() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-xbap",
                possibleExtensions: [
                    "xbap"
                ],
                source: .apache
            )
        }

        public static func xMsaccess() -> MediaType {
            .init(
                type: name,
                subtype: "x-msaccess",
                possibleExtensions: [
                    "mdb"
                ],
                source: .apache
            )
        }

        public static func xMsbinder() -> MediaType {
            .init(
                type: name,
                subtype: "x-msbinder",
                possibleExtensions: [
                    "obd"
                ],
                source: .apache
            )
        }

        public static func xMscardfile() -> MediaType {
            .init(
                type: name,
                subtype: "x-mscardfile",
                possibleExtensions: [
                    "crd"
                ],
                source: .apache
            )
        }

        public static func xMsclip() -> MediaType {
            .init(
                type: name,
                subtype: "x-msclip",
                possibleExtensions: [
                    "clp"
                ],
                source: .apache
            )
        }

        public static func xMsdosProgram() -> MediaType {
            .init(
                type: name,
                subtype: "x-msdos-program",
                possibleExtensions: [
                    "exe"
                ]
            )
        }

        public static func xMsdownload() -> MediaType {
            .init(
                type: name,
                subtype: "x-msdownload",
                possibleExtensions: [
                    "exe",
                    "dll",
                    "com",
                    "bat",
                    "msi",
                ],
                source: .apache
            )
        }

        public static func xMsmediaview() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmediaview",
                possibleExtensions: [
                    "mvb",
                    "m13",
                    "m14",
                ],
                source: .apache
            )
        }

        public static func xMsmetafile() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmetafile",
                possibleExtensions: [
                    "wmf",
                    "wmz",
                    "emf",
                    "emz",
                ],
                source: .apache
            )
        }

        public static func xMsmoney() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmoney",
                possibleExtensions: [
                    "mny"
                ],
                source: .apache
            )
        }

        public static func xMspublisher() -> MediaType {
            .init(
                type: name,
                subtype: "x-mspublisher",
                possibleExtensions: [
                    "pub"
                ],
                source: .apache
            )
        }

        public static func xMsschedule() -> MediaType {
            .init(
                type: name,
                subtype: "x-msschedule",
                possibleExtensions: [
                    "scd"
                ],
                source: .apache
            )
        }

        public static func xMsterminal() -> MediaType {
            .init(
                type: name,
                subtype: "x-msterminal",
                possibleExtensions: [
                    "trm"
                ],
                source: .apache
            )
        }

        public static func xMswrite() -> MediaType {
            .init(
                type: name,
                subtype: "x-mswrite",
                possibleExtensions: [
                    "wri"
                ],
                source: .apache
            )
        }

        public static func xNetcdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-netcdf",
                possibleExtensions: [
                    "nc",
                    "cdf",
                ],
                source: .apache
            )
        }

        public static func xNsProxyAutoconfig() -> MediaType {
            .init(
                type: name,
                subtype: "x-ns-proxy-autoconfig",
                possibleExtensions: [
                    "pac"
                ]
            )
        }

        public static func xNzb() -> MediaType {
            .init(
                type: name,
                subtype: "x-nzb",
                possibleExtensions: [
                    "nzb"
                ],
                source: .apache
            )
        }

        public static func xPerl() -> MediaType {
            .init(
                type: name,
                subtype: "x-perl",
                possibleExtensions: [
                    "pl",
                    "pm",
                ],
                source: .nginx
            )
        }

        public static func xPilot() -> MediaType {
            .init(
                type: name,
                subtype: "x-pilot",
                possibleExtensions: [
                    "prc",
                    "pdb",
                ],
                source: .nginx
            )
        }

        public static func xPkcs12() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs12",
                possibleExtensions: [
                    "p12",
                    "pfx",
                ],
                source: .apache
            )
        }

        public static func xPkcs7Certificates() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs7-certificates",
                possibleExtensions: [
                    "p7b",
                    "spc",
                ],
                source: .apache
            )
        }

        public static func xPkcs7Certreqresp() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs7-certreqresp",
                possibleExtensions: [
                    "p7r"
                ],
                source: .apache
            )
        }

        public static func xPkiMessage() -> MediaType {
            .init(
                type: name,
                subtype: "x-pki-message",
                source: .iana
            )
        }

        public static func xRarCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-rar-compressed",
                possibleExtensions: [
                    "rar"
                ],
                source: .apache
            )
        }

        public static func xRedhatPackageManager() -> MediaType {
            .init(
                type: name,
                subtype: "x-redhat-package-manager",
                possibleExtensions: [
                    "rpm"
                ],
                source: .nginx
            )
        }

        public static func xResearchInfoSystems() -> MediaType {
            .init(
                type: name,
                subtype: "x-research-info-systems",
                possibleExtensions: [
                    "ris"
                ],
                source: .apache
            )
        }

        public static func xSea() -> MediaType {
            .init(
                type: name,
                subtype: "x-sea",
                possibleExtensions: [
                    "sea"
                ],
                source: .nginx
            )
        }

        public static func xSh() -> MediaType {
            .init(
                type: name,
                subtype: "x-sh",
                possibleExtensions: [
                    "sh"
                ],
                source: .apache
            )
        }

        public static func xShar() -> MediaType {
            .init(
                type: name,
                subtype: "x-shar",
                possibleExtensions: [
                    "shar"
                ],
                source: .apache
            )
        }

        public static func xShockwaveFlash() -> MediaType {
            .init(
                type: name,
                subtype: "x-shockwave-flash",
                possibleExtensions: [
                    "swf"
                ],
                source: .apache
            )
        }

        public static func xSilverlightApp() -> MediaType {
            .init(
                type: name,
                subtype: "x-silverlight-app",
                possibleExtensions: [
                    "xap"
                ],
                source: .apache
            )
        }

        public static func xSql() -> MediaType {
            .init(
                type: name,
                subtype: "x-sql",
                possibleExtensions: [
                    "sql"
                ],
                source: .apache
            )
        }

        public static func xStuffit() -> MediaType {
            .init(
                type: name,
                subtype: "x-stuffit",
                possibleExtensions: [
                    "sit"
                ],
                source: .apache
            )
        }

        public static func xStuffitx() -> MediaType {
            .init(
                type: name,
                subtype: "x-stuffitx",
                possibleExtensions: [
                    "sitx"
                ],
                source: .apache
            )
        }

        public static func xSubrip() -> MediaType {
            .init(
                type: name,
                subtype: "x-subrip",
                possibleExtensions: [
                    "srt"
                ],
                source: .apache
            )
        }

        public static func xSv4cpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-sv4cpio",
                possibleExtensions: [
                    "sv4cpio"
                ],
                source: .apache
            )
        }

        public static func xSv4crc() -> MediaType {
            .init(
                type: name,
                subtype: "x-sv4crc",
                possibleExtensions: [
                    "sv4crc"
                ],
                source: .apache
            )
        }

        public static func xT3vmImage() -> MediaType {
            .init(
                type: name,
                subtype: "x-t3vm-image",
                possibleExtensions: [
                    "t3"
                ],
                source: .apache
            )
        }

        public static func xTads() -> MediaType {
            .init(
                type: name,
                subtype: "x-tads",
                possibleExtensions: [
                    "gam"
                ],
                source: .apache
            )
        }

        public static func xTar() -> MediaType {
            .init(
                type: name,
                subtype: "x-tar",
                possibleExtensions: [
                    "tar"
                ],
                source: .apache
            )
        }

        public static func xTcl() -> MediaType {
            .init(
                type: name,
                subtype: "x-tcl",
                possibleExtensions: [
                    "tcl",
                    "tk",
                ],
                source: .apache
            )
        }

        public static func xTex() -> MediaType {
            .init(
                type: name,
                subtype: "x-tex",
                possibleExtensions: [
                    "tex"
                ],
                source: .apache
            )
        }

        public static func xTexTfm() -> MediaType {
            .init(
                type: name,
                subtype: "x-tex-tfm",
                possibleExtensions: [
                    "tfm"
                ],
                source: .apache
            )
        }

        public static func xTexinfo() -> MediaType {
            .init(
                type: name,
                subtype: "x-texinfo",
                possibleExtensions: [
                    "texinfo",
                    "texi",
                ],
                source: .apache
            )
        }

        public static func xTgif() -> MediaType {
            .init(
                type: name,
                subtype: "x-tgif",
                possibleExtensions: [
                    "obj"
                ],
                source: .apache
            )
        }

        public static func xUstar() -> MediaType {
            .init(
                type: name,
                subtype: "x-ustar",
                possibleExtensions: [
                    "ustar"
                ],
                source: .apache
            )
        }

        public static func xVirtualboxHdd() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-hdd",
                possibleExtensions: [
                    "hdd"
                ]
            )
        }

        public static func xVirtualboxOva() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-ova",
                possibleExtensions: [
                    "ova"
                ]
            )
        }

        public static func xVirtualboxOvf() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-ovf",
                possibleExtensions: [
                    "ovf"
                ]
            )
        }

        public static func xVirtualboxVbox() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vbox",
                possibleExtensions: [
                    "vbox"
                ]
            )
        }

        public static func xVirtualboxVboxExtpack() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vbox-extpack",
                possibleExtensions: [
                    "vbox-extpack"
                ]
            )
        }

        public static func xVirtualboxVdi() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vdi",
                possibleExtensions: [
                    "vdi"
                ]
            )
        }

        public static func xVirtualboxVhd() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vhd",
                possibleExtensions: [
                    "vhd"
                ]
            )
        }

        public static func xVirtualboxVmdk() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vmdk",
                possibleExtensions: [
                    "vmdk"
                ]
            )
        }

        public static func xWaisSource() -> MediaType {
            .init(
                type: name,
                subtype: "x-wais-source",
                possibleExtensions: [
                    "src"
                ],
                source: .apache
            )
        }

        public static func xWebAppManifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-web-app-manifest",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "webapp"
                ]
            )
        }

        public static func xWwwFormUrlencoded() -> MediaType {
            .init(
                type: name,
                subtype: "x-www-form-urlencoded",
                source: .iana
            )
        }

        public static func xX509CaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-ca-cert",
                possibleExtensions: [
                    "der",
                    "crt",
                    "pem",
                ],
                source: .iana
            )
        }

        public static func xX509CaRaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-ca-ra-cert",
                source: .iana
            )
        }

        public static func xX509NextCaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-next-ca-cert",
                source: .iana
            )
        }

        public static func xXfig() -> MediaType {
            .init(
                type: name,
                subtype: "x-xfig",
                possibleExtensions: [
                    "fig"
                ],
                source: .apache
            )
        }

        public static func xXliffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-xliff",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "xlf"
                ],
                source: .apache
            )
        }

        public static func xXpinstall() -> MediaType {
            .init(
                type: name,
                subtype: "x-xpinstall",
                possibleExtensions: [
                    "xpi"
                ],
                source: .apache
            )
        }

        public static func xXz() -> MediaType {
            .init(
                type: name,
                subtype: "x-xz",
                possibleExtensions: [
                    "xz"
                ],
                source: .apache
            )
        }

        public static func xZipCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-zip-compressed",
                possibleExtensions: [
                    "zip"
                ]
            )
        }

        public static func xZmachine() -> MediaType {
            .init(
                type: name,
                subtype: "x-zmachine",
                possibleExtensions: [
                    "z1",
                    "z2",
                    "z3",
                    "z4",
                    "z5",
                    "z6",
                    "z7",
                    "z8",
                ],
                source: .apache
            )
        }

        public static func x400Bp() -> MediaType {
            .init(
                type: name,
                subtype: "x400-bp",
                source: .iana
            )
        }

        public static func xacmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xacml",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xamlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xaml",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "xaml"
                ],
                source: .apache
            )
        }

        public static func xcapAttXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-att",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xav"
                ],
                source: .iana
            )
        }

        public static func xcapCapsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-caps",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xca"
                ],
                source: .iana
            )
        }

        public static func xcapDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-diff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdf"
                ],
                source: .iana
            )
        }

        public static func xcapElXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-el",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xel"
                ],
                source: .iana
            )
        }

        public static func xcapErrorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-error",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xcapNsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-ns",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xns"
                ],
                source: .iana
            )
        }

        public static func xconConferenceInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcon-conference-info",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xconConferenceInfoDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcon-conference-info-diff",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xencXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xenc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xenc"
                ],
                source: .iana
            )
        }

        public static func xfdf() -> MediaType {
            .init(
                type: name,
                subtype: "xfdf",
                possibleExtensions: [
                    "xfdf"
                ],
                source: .iana
            )
        }

        public static func xhtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xhtml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xhtml",
                    "xht",
                ],
                source: .iana
            )
        }

        public static func xhtmlVoiceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xhtml-voice",
                    suffix: "xml"
                ),
                source: .apache
            )
        }

        public static func xliffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xliff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xlf"
                ],
                source: .iana
            )
        }

        public static func xml() -> MediaType {
            .init(
                type: name,
                subtype: "xml",
                possibleExtensions: [
                    "xml",
                    "xsl",
                    "xsd",
                    "rng",
                ],
                source: .unknown
            )
        }

        public static func xmlDtd() -> MediaType {
            .init(
                type: name,
                subtype: "xml-dtd",
                possibleExtensions: [
                    "dtd"
                ],
                source: .iana
            )
        }

        public static func xmlExternalParsedEntity() -> MediaType {
            .init(
                type: name,
                subtype: "xml-external-parsed-entity",
                source: .iana
            )
        }

        public static func xmlPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xml-patch",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xmppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xmpp",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func xopXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xop",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xop"
                ],
                source: .iana
            )
        }

        public static func xprocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xproc",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "xpl"
                ],
                source: .apache
            )
        }

        public static func xsltXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xslt",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsl",
                    "xslt",
                ],
                source: .iana
            )
        }

        public static func xspfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xspf",
                    suffix: "xml",
                ),
                possibleExtensions: [
                    "xspf"
                ],
                source: .apache
            )
        }

        public static func xvXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xv",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mxml",
                    "xhvml",
                    "xvml",
                    "xvm",
                ],
                source: .iana
            )
        }

        public static func yaml() -> MediaType {
            .init(
                type: name,
                subtype: "yaml",
                source: .iana
            )
        }

        public static func yang() -> MediaType {
            .init(
                type: name,
                subtype: "yang",
                possibleExtensions: [
                    "yang"
                ],
                source: .iana
            )
        }

        public static func yangDataCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "cbor"
                ),
                source: .iana
            )
        }

        public static func yangDataJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func yangDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func yangPatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-patch",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func yangPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-patch",
                    suffix: "xml"
                ),
                source: .iana
            )
        }

        public static func yangSidJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-sid",
                    suffix: "json"
                ),
                source: .iana
            )
        }

        public static func yinXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yin",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "yin"
                ],
                source: .iana
            )
        }

        public static func zip() -> MediaType {
            .init(
                type: name,
                subtype: "zip",
                possibleExtensions: [
                    "zip"
                ],
                source: .iana
            )
        }

        public static func zipDotlottie() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "zip",
                    suffix: "dotlottie"
                ),
                possibleExtensions: [
                    "lottie"
                ]
            )
        }

        public static func zlib() -> MediaType {
            .init(
                type: name,
                subtype: "zlib",
                source: .iana
            )
        }

        public static func zstd() -> MediaType {
            .init(
                type: name,
                subtype: "zstd",
                source: .iana
            )
        }

    }

}
