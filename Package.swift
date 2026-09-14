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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-NXMCore-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "9a00ac11a2e820529218194149b4014fabb1c6cb10ba5b7522ef5528740f58b0"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-VonageClientSDKCore-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "f8194d400099e70f979d8427b3b27dd8f42b7debbc04b1e14ee1821139509f1d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-VonageClientSDKVoice-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "b742ba049059334c293158f616a7fa9774637f7037ae89d2014b7cbd8b84d09e"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-VonageClientSDKEmergency-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "3be424331cca25f423ebb9417a414bbe9d408da7ac89d87437c6daec3e3f1e93"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-VonageClientSDKChat-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "36d857ebac148d4c3242f1b0801d7edd6d6df429890bc849f1ce8c940415895d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.2-snapshot.202609140911/ios/SPM-VonageClientSDK-2.7.2-snapshot.202609140911-Release.zip",
            checksum: "f47bf011f1ec3638cc6feaa69e23b4fa0d9b3bcb486d4b9f7574dac2ea257c7d"
        ),
    ]
)
