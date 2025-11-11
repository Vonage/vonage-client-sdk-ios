// swift-tools-version:5.3
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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-NXMCore-2.1.3-snapshot.151.0-Release.zip",
            checksum: "7531a22dc50530dab4ab543fcdcb5f1901f10fd4bbbe39a5ba932ea2d4a9a9da"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-VonageClientSDKCore-2.1.3-snapshot.151.0-Release.zip",
            checksum: "5530f19db77790de9d82f3b6f0aff6fe353a42fe9741288e60a092aa932e60cb"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-VonageClientSDKVoice-2.1.3-snapshot.151.0-Release.zip",
            checksum: "0cf2e80375e0ad8e6a8d13a0799c6427ca47c82dd100b464bcda56e156dfe1a2"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-VonageClientSDKEmergency-2.1.3-snapshot.151.0-Release.zip",
            checksum: "cceafd7f7326501321344502b7a53f5631a4e88bfc1ef441488ad2f3bf47b561"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-VonageClientSDKChat-2.1.3-snapshot.151.0-Release.zip",
            checksum: "9eac7554912f3d7ce29a697d771d88e3f30e8306eeca1d1b5993019939ac1073"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.151.0/ios/SPM-VonageClientSDK-2.1.3-snapshot.151.0-Release.zip",
            checksum: "559a5037dc99bdccd00d3b3e8d2e260a525f9cd14b4f8e9659b12ea8afe8f1bc"
        ),
    ]
)
