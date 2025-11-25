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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.154.0/ios/SPM-NXMCore-2.2.0-snapshot.154.0-Release.zip",
            checksum: "7ca267228f3f0aa3013a1c8de032f1b1ee180d85f52e78ecb986d6367ff7e485"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.154.0/ios/SPM-VonageClientSDKCore-2.2.0-snapshot.154.0-Release.zip",
            checksum: "6290a56674d9638fe1968af368a8807f91ceaeaab92bfec79f130b1b4b5cdd3d"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.154.0/ios/SPM-VonageClientSDKChat-2.2.0-snapshot.154.0-Release.zip",
            checksum: "aa0b6c874e203c864c6fafdfd86578ce23fb3b4a8a5b41ff8ce028336c2b17d2"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.154.0/ios/SPM-VonageClientSDKVoice-2.2.0-snapshot.154.0-Release.zip",
            checksum: "cd168e71b139b62cfc37670dab96ce664101614428b46dc6f34c2cb09e5770b6"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.2.0-snapshot.154.0/ios/SPM-VonageClientSDK-2.2.0-snapshot.154.0-Release.zip",
            checksum: "c834741389ede5ab1a68befdca28de39b6f1bd6aba69aa8a661191cf096814df"
        ),
    ]
)
