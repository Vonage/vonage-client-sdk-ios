// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDKPackage",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "VonageClientSDKVoice",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice"
            ]
        ),
        .library(
            name: "VonageClientSDKEmergency",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice",
                "VonageClientSDKEmergency"
            ]
        ),
        .library(
            name: "VonageClientSDKChat",
            targets: [
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKChat"
            ]
        ),
        .library(
            name: "VonageClientSDK",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice",
                "VonageClientSDKEmergency",
                "VonageClientSDKChat",
                "VonageClientSDK"
            ]
        ),
    ],
    dependencies: [],
    targets: [
        // External Dependencies
        .target(
            name: "ExternalDependencies",
            path: "./Dummy",
            resources: [
                .process("Resources"),
                .process("PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("GLKit"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("Network"),
                .linkedFramework("MetalKit")
            ]
        ),
        // VonageWebRTC
        .binaryTarget(
            name: "VonageWebRTC",
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.116/VonageWebRTCVoice-121.1.116.zip",
            checksum: "436ced184a58270e65110a475e18790e667992e56192b52839afb18758d21e8f"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-NXMCore-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "22de28712d535a602c9ef04503c4367760de441cb0234cb2fe6c8febe42a4d6e"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-VonageClientSDKCore-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "dd0a13f2905f307309361d2ad896884aeeae54c9717d6dd7211863a4ebeccf44"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-VonageClientSDKVoice-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "e076b52d2057d9b770d395cef3d9081b35c7d765aa5f61a5757c4d6e9a5fde4f"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-VonageClientSDKEmergency-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "1b73138c7e6391f82b08add169397f0445edae643ebb06ec4a8034d8ffa9362b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-VonageClientSDKChat-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "5466ead541189043d06077e2ce9e0c838dbe6d3a6c712c35b0b9de6111a7ae32"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611201104/ios/SPM-VonageClientSDK-2.11.2-snapshot.202611201104-Release.zip",
            checksum: "abe704703aed78db164d321537d090bea3dcf72896eba6310585d3079a78951e"
        ),
    ]
)
