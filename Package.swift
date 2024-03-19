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
            resources: [
                .process("Resources")
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.10.34/VonageWebRTC-99.10.34.zip",
            checksum: "a0e7f2a9dac403e3116dff6e67d14da9c232d2ea1c9205b28a357b43dc427432"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-beta.1/ios/SPM-NXMCore-1.5.2-beta.1-Release.zip",
            checksum: "802f3bd7e1817d66261afeaab73104977ea62eeab9b0ae43ff8cae5443b36fb9"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-beta.1/ios/SPM-VonageClientSDKCore-1.5.2-beta.1-Release.zip",
            checksum: "ebdd1f3e32de7148e8fd629c9caa2ef402cda94677677723e4f9e88f2cc6336f"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-beta.1/ios/SPM-VonageClientSDKChat-1.5.2-beta.1-Release.zip",
            checksum: "de0e2004c46037d6b7935815b372795376562856565080a4219a1accb8df5b41"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-beta.1/ios/SPM-VonageClientSDKVoice-1.5.2-beta.1-Release.zip",
            checksum: "59b8006efeffaa395a7b490d5e5e8c111e63e6e367dd16069cb043cf8464de00"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-beta.1/ios/SPM-VonageClientSDK-1.5.2-beta.1-Release.zip",
            checksum: "741954079f32d3a6e9849b5decf11e4d06d3394e1e2bf702f355587d8d8de9e8"
        ),
    ]
)
