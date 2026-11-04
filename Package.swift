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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-NXMCore-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "b23caa27c6772168f404c55fb50ae10bbb255274f74bf7839a3bcbf83ba28a25"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-VonageClientSDKCore-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "ca6fc991f89185a5d387a3edac9fe854a3fd1b9a7f1bebb2cb3bce2f5c5f111a"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-VonageClientSDKVoice-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "df6216ca35e8cde7feeabcda205877a3ee2da880515541ae3d33fb0bd2f08bcc"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-VonageClientSDKEmergency-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "55dc7024f0c99a7fd2e7fad1cb594d9bec78c58496ddcfb35d0618c61ea6ecc5"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-VonageClientSDKChat-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "c2860629f741053019595eefe1d15f6d573d543e52a37247dd03374f60740608"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041005/ios/SPM-VonageClientSDK-2.11.0-snapshot.202611041005-Release.zip",
            checksum: "5f87bde7e0bfae3aae3fc5e1e18b3c7be348b6578eeb42fa8db4d7905a5866e2"
        ),
    ]
)
