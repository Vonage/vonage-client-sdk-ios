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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-NXMCore-2.3.0-snapshot.168.0-Release.zip",
            checksum: "7166b44cccdb42d32b5c5ddd144f3d0241d1052756d3301a70f1de4f3eef89da"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-VonageClientSDKCore-2.3.0-snapshot.168.0-Release.zip",
            checksum: "7a58f9f2beed41f58d89ae04f422b1e23bd9aae9d871d29a249cda169a502775"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-VonageClientSDKVoice-2.3.0-snapshot.168.0-Release.zip",
            checksum: "33e7529db015cb2b364fe789363060b43e3d82c7d0d00c911d4e7c01cb516e95"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-VonageClientSDKEmergency-2.3.0-snapshot.168.0-Release.zip",
            checksum: "3955446ee88e4d20b52e42363687fc5b9a7b607b66464458a6cb74339cdaf254"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-VonageClientSDKChat-2.3.0-snapshot.168.0-Release.zip",
            checksum: "1671ecc0c911706707768b9f0fd7e9505153c3cd7812a54d51b8a72514ef5800"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.168.0/ios/SPM-VonageClientSDK-2.3.0-snapshot.168.0-Release.zip",
            checksum: "836f5088877a33fd7dd82d964fe02cb93e6ccf22effc6e97602c6eaf344426a4"
        ),
    ]
)
