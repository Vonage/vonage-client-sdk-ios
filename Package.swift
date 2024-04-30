// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VonageClientSDKPackage",
    platforms: [
        .iOS(.v13),
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.54/VonageWebRTC-99.13.54.zip",
            checksum: "ce03b54ab4dce9207e21f09581f422587d37757f248c34f3751aea8c062c0dbc"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.0/ios/SPM-NXMCore-1.6.0-beta.0-Release.zip",
            checksum: "b17d4c27fb3296181abe7d7dcbd43b6a7cd08a88fef22126fbe9792efc2469f3"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.0/ios/SPM-VonageClientSDKCore-1.6.0-beta.0-Release.zip",
            checksum: "0d695b5b477ce7fe74be242f22b4e2b9683d7e5cc19092bb3525aa3b9918c415"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.0/ios/SPM-VonageClientSDKChat-1.6.0-beta.0-Release.zip",
            checksum: "9a3663999ac696f3c79c03d11457ecf7991e07404cf2fa8092a035fde30cfa79"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.0/ios/SPM-VonageClientSDKVoice-1.6.0-beta.0-Release.zip",
            checksum: "1ed450d534d0b2bde77d64790950376f4e82be235c270dbc390bec9527bc199d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.0/ios/SPM-VonageClientSDK-1.6.0-beta.0-Release.zip",
            checksum: "85d31d0c1efac85fda20e0b703e8e842a67a3172f638ac50f9f028da4d329c0f"
        ),
    ]
)
