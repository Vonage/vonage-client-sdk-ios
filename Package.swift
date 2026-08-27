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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.0-dev.612/VonageWebRTCVoice-121.1.0-dev.612.zip",
            checksum: "4e8010b0208e4d6071d1f33ecb78da637e41961248b0742760f54966aca435a3"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-NXMCore-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "3c2f242cd4840e4d5161aaf484d389d23f87e67337ef308758bda05bb14755a8"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-VonageClientSDKCore-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "6ebf6d090561a6944b3eced6598d0b208c0a51d5bec6f4a5925f96ad2decae76"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-VonageClientSDKVoice-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "cd58a88c093cee91c0c50c275c29ddf9bb921be422c1dd00b51e72e6c5f92fe3"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-VonageClientSDKEmergency-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "e3c00e5d7d76f2b5b0f40a7e71f353769274b135858c6b394333f7f06c144320"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-VonageClientSDKChat-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "72b88376a7e19315cdf103c6787e852260f62d909a8940297d388f296c8edccf"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271129/ios/SPM-VonageClientSDK-2.6.4-snapshot.202608271129-Release.zip",
            checksum: "dd556971d146f2aacfd71ebf08509b3caae09c0c72003661d340b80f40bd0ee9"
        ),
    ]
)
