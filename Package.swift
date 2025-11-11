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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-alpha.0/ios/SPM-NXMCore-2.2.0-alpha.0-Release.zip",
            checksum: "56e1569def624ff3ed29a943ece354098a3670c04adfa6fbd93ab829b8c84cb5"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-alpha.0/ios/SPM-VonageClientSDKCore-2.2.0-alpha.0-Release.zip",
            checksum: "f60b7189edd6c190686db6d4d56c3f359f445eadfe59226d1246dad15327fd45"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-alpha.0/ios/SPM-VonageClientSDKChat-2.2.0-alpha.0-Release.zip",
            checksum: "86f864bb48f4a6cafedd59d7176863a8c1cbed1fbfbd48cbeb7e0a30947bb21f"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-alpha.0/ios/SPM-VonageClientSDKVoice-2.2.0-alpha.0-Release.zip",
            checksum: "046b52aae2833648df269eb76cf637ba41c39756371fd5b9745ee62d86b40941"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-alpha.0/ios/SPM-VonageClientSDK-2.2.0-alpha.0-Release.zip",
            checksum: "245308628333bea66046b10674429a0d5731aa0078e95e2b5c67200eddb05ee6"
        ),
    ]
)
