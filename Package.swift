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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.4-rc.0/ios/SPM-NXMCore-1.1.4-rc.0-Release.zip",
            checksum: "650efeee6de3c7457a5f1c01ab422f00c0aa6a10704e67cbc50eef3b365eabcc"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.4-rc.0/ios/SPM-VonageClientSDKCore-1.1.4-rc.0-Release.zip",
            checksum: "5e52859774c02f084966061fbe1c2670e9c967adcaee84bf0bdbcf191cb422cf"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.4-rc.0/ios/SPM-VonageClientSDKChat-1.1.4-rc.0-Release.zip",
            checksum: "7842d8b8eded3cddf15908cf3b31341df64fbc8887ec7056a6d6a154df24434c"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.4-rc.0/ios/SPM-VonageClientSDKVoice-1.1.4-rc.0-Release.zip",
            checksum: "f5dc5259d285370e5e0acfcc9aaa8477ef1ab1e6bbc9eb6ae81e54823b7f1a4c"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.4-rc.0/ios/SPM-VonageClientSDK-1.1.4-rc.0-Release.zip",
            checksum: "dc731fb81acad95196773b1e80893b5a2d00b3ff5395ac3f3e6702a4d63e8833"
        ),
    ]
)
