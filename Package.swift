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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.7.23/VonageWebRTC-99.7.23.zip",
            checksum: "8104f28bb1d2c48fb3ad1d554bbc72517eb2154e92f802869f1e5b784836d77e"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.5-rc.0/ios/SPM-NXMCore-1.1.5-rc.0-Release.zip",
            checksum: "f99af712a381deeb50ceb92311c4de94437b11732f13bfb242b7a4fea50457ca"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.5-rc.0/ios/SPM-VonageClientSDKCore-1.1.5-rc.0-Release.zip",
            checksum: "6c3b287690824004cdedc6207b87f2af1f93841c4901d3c0e21880065cf73207"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.5-rc.0/ios/SPM-VonageClientSDKChat-1.1.5-rc.0-Release.zip",
            checksum: "ef6acdb0dd6fb92a04d08d4a70bad94a8b5f82e52ec59201281e5d03c33a5e8d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.5-rc.0/ios/SPM-VonageClientSDKVoice-1.1.5-rc.0-Release.zip",
            checksum: "65ef8eba5be3d5abfd6da986e53e9543e8eee84de390c0554d25eb4272069e5d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.5-rc.0/ios/SPM-VonageClientSDK-1.1.5-rc.0-Release.zip",
            checksum: "fc18aecf175b125b3005040c54acef3b258a6b2d4404e5839d9300760da5d7b6"
        ),
    ]
)
