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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.100/VonageWebRTC-121.1.100.zip",
            checksum: "16cc7e52c0f9807c6ad3f6b378257041ecf3877c8ce62e245a8afa77f253a8fa"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.153.0/ios/SPM-NXMCore-2.2.0-snapshot.153.0-Release.zip",
            checksum: "21ea674d64c6d7ed7e6df70857827cecf1f00aa34dac79ed1afa104acaac0ca0"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.153.0/ios/SPM-VonageClientSDKCore-2.2.0-snapshot.153.0-Release.zip",
            checksum: "abf3b6e322ab0b120310a5717d6d0e72c06dae8db9d936285f9220792ff36ff9"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.153.0/ios/SPM-VonageClientSDKChat-2.2.0-snapshot.153.0-Release.zip",
            checksum: "f3bda57778fb3b50497c2ee0419b2707fd1a853a0cad25c99141709802f55e14"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.153.0/ios/SPM-VonageClientSDKVoice-2.2.0-snapshot.153.0-Release.zip",
            checksum: "e53f5849eca04003444c9881e5907f2a5034b107c9c236a82091dfae787ed7b7"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.153.0/ios/SPM-VonageClientSDK-2.2.0-snapshot.153.0-Release.zip",
            checksum: "0f256c4221cd7730b85b42b1fb5a0a1c935c95e970f108f136ae4a8f5ec8e1f1"
        ),
    ]
)
