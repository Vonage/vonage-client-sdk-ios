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
            name: "VonageClientSDKEmergency",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.14.95/VonageWebRTC-99.14.95.zip",
            checksum: "19296d9cba419e20162faa4515b1f64118af8464c2777fad98b36b5324c5ae92"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-NXMCore-2.1.1-snapshot.103.0-Release.zip",
            checksum: "86b4d8cbd6b38b9eab4db16f81a47ff1b033e3a0469852ed5c85300746cb039d"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-VonageClientSDKCore-2.1.1-snapshot.103.0-Release.zip",
            checksum: "ff0b6623cd06768bec676e602cc58d408401dfcba6e1ceec85633f2aaa20ac46"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-VonageClientSDKVoice-2.1.1-snapshot.103.0-Release.zip",
            checksum: "5f7ebb90bd4b06be3ce0909b12f291caadf4dc1c0e3969e450a10da2daf1bbd6"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-VonageClientSDKEmergency-2.1.1-snapshot.103.0-Release.zip",
            checksum: "c85e7da66221febfaa38e68452918148e1d858b2427ecfe3ee8bdcc6c0fa41d0"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-VonageClientSDKChat-2.1.1-snapshot.103.0-Release.zip",
            checksum: "738bdc17a4f5cc7a022bae910e237bca939228106007d9b48874ceba865f012d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.103.0/ios/SPM-VonageClientSDK-2.1.1-snapshot.103.0-Release.zip",
            checksum: "d87e0cee0130f278612d4ef47a37b1ec9332c01d6b8fbab1a051e3940a62cd31"
        ),
    ]
)
