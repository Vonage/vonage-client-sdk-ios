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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-rc.2/ios/SPM-NXMCore-1.3.0-rc.2-Release.zip",
            checksum: "b600ba93c3b82765a62a308eb5b7b67b07b8b4b216c2f8996a138982bfcc907a"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-rc.2/ios/SPM-VonageClientSDKCore-1.3.0-rc.2-Release.zip",
            checksum: "eaf15a199094bdeac4c29d55fa3bfd790364a5482d2fec1a5aba92585557320b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-rc.2/ios/SPM-VonageClientSDKChat-1.3.0-rc.2-Release.zip",
            checksum: "452297755f02b30bee487186b3bb7145ecdd5c6095e209cfa57f020e4fec0dae"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-rc.2/ios/SPM-VonageClientSDKVoice-1.3.0-rc.2-Release.zip",
            checksum: "c7a674dc494b265a510bcca0b2306a6b2c74c5982722b74e996ab1bfc21a389f"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-rc.2/ios/SPM-VonageClientSDK-1.3.0-rc.2-Release.zip",
            checksum: "f59dd940022191fc69d800ff404dcf367812f55432c467179462886264070cd8"
        ),
    ]
)
