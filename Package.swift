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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.9.26/VonageWebRTC-99.9.26.zip",
            checksum: "0ac0bccec93c982d8873accb08dbcd84a150657cfa93f24343f1b74687639be0"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.36.0/ios/SPM-NXMCore-1.2.1-snapshot.36.0-Release.zip",
            checksum: "27d78de26a3ee0fa7b8d0a6351ce5da4428de850f4692d6413500f3a9c7661e9"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.36.0/ios/SPM-VonageClientSDKCore-1.2.1-snapshot.36.0-Release.zip",
            checksum: "8a303d15cc0fd998609159cad14396f4f6987bf402581c4b662d8fdcbe99c427"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.36.0/ios/SPM-VonageClientSDKChat-1.2.1-snapshot.36.0-Release.zip",
            checksum: "9d42d376d436fa063631dba0e0a0aa3ffe7855dd8dfe1085f90ab048c1deeb30"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.36.0/ios/SPM-VonageClientSDKVoice-1.2.1-snapshot.36.0-Release.zip",
            checksum: "4c99d619b06c1e63b465e0fdd5ab4899b995841d79c479a9768ccc8630bc070d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.36.0/ios/SPM-VonageClientSDK-1.2.1-snapshot.36.0-Release.zip",
            checksum: "df70d899eeac3526cc5b21d36de0423fdfd9004aac97f70d59c8bb557d18cddc"
        ),
    ]
)
