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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.100/VonageWebRTC-121.1.100.zip",
            checksum: "16cc7e52c0f9807c6ad3f6b378257041ecf3877c8ce62e245a8afa77f253a8fa"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-NXMCore-2.4.0-alpha.3-Release.zip",
            checksum: "e0e3209f577e1b25068d3e91cc1190637dd37aa562bfeb233a62afdf92a426da"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-VonageClientSDKCore-2.4.0-alpha.3-Release.zip",
            checksum: "3ed28503228df08fdefc28b373d3b596373fb5efc3009b3a81ae15fe7e1edf83"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-VonageClientSDKVoice-2.4.0-alpha.3-Release.zip",
            checksum: "e1aceab0a20bb5c017b86a141874086290ff6c79f4393fede21ae4daf3e0e319"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-VonageClientSDKEmergency-2.4.0-alpha.3-Release.zip",
            checksum: "897c63e06ee2829f1c06a9ebc2dd4f216841729ca6857cbfdcf9bf58ce67053b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-VonageClientSDKChat-2.4.0-alpha.3-Release.zip",
            checksum: "e055c634230fd76edcf4f4f110a275cb9bfe047735255d04162ceb967c4abfed"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-alpha.3/ios/SPM-VonageClientSDK-2.4.0-alpha.3-Release.zip",
            checksum: "f1ba080be929cbec5a3271fa0ad0c85d2d61d230cd147381661f14a73ca6c0b7"
        ),
    ]
)
