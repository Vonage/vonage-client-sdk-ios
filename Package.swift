// swift-tools-version:5.9
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
            name: "VonageClientSDKEmergency",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice",
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
                "VonageClientSDKEmergency",
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.116/VonageWebRTCVoice-121.1.116.zip",
            checksum: "436ced184a58270e65110a475e18790e667992e56192b52839afb18758d21e8f"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-NXMCore-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "fd15376ead270ed54b7176fde56bf9754a97c1dc539e84e8aa27c6691d288b04"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-VonageClientSDKCore-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "3d81ff605480f7a06e4b13b65c77adfbae895e6c658be2cabdc528b23b3e7635"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-VonageClientSDKVoice-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "91a5531698ef3fbde56bba46a9e4d26273370dfdef772a2e418eb25e33a4f5e4"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-VonageClientSDKEmergency-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "372645a4b566f4877cea372a1c670d9a0a7badac060c16cd0b2efeae16af1b31"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-VonageClientSDKChat-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "d4e9b373b37d0aaf341523fc836dbd0a3860f76faf21cc7ca165e4bbe04cda4b"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609141041/ios/SPM-VonageClientSDK-2.7.2-snapshot.202609141041-Release.zip",
            checksum: "04dc20fc60cf5df7d0b7495a221aa7b1595c0aeec97c740d7a8889785e5b1c50"
        ),
    ]
)
