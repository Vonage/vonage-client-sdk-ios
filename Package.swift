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
            checksum: ""
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.91.0/ios/SPM-NXMCore-1.3.0-snapshot.91.0-Release.zip",
            checksum: "4bb78f7a63165aae79f20a0450d5080a2f7f3a1cfe09ebce7407dfa33cac4e7e"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.91.0/ios/SPM-VonageClientSDKCore-1.3.0-snapshot.91.0-Release.zip",
            checksum: "295679d163cfe2e3aa6d2de30a446405759418ab4f7c259c9958c72b5b2733ea"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.91.0/ios/SPM-VonageClientSDKChat-1.3.0-snapshot.91.0-Release.zip",
            checksum: "f261aff2d6709e64197eeb8933d15c8637129cc5a67a960d850d5bb78d0317b7"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.91.0/ios/SPM-VonageClientSDKVoice-1.3.0-snapshot.91.0-Release.zip",
            checksum: "3620bd661e80b7e4f673dd0aadbe4d63854ae59f695d128046f9e850ab5d3029"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.91.0/ios/SPM-VonageClientSDK-1.3.0-snapshot.91.0-Release.zip",
            checksum: "beb7dce4ecec7d8b2237596b7687f87d6ce878049dff65c6927add0947293d51"
        ),
    ]
)
