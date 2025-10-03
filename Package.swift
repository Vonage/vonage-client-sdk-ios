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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.14.95/VonageWebRTC-99.14.95.zip",
            checksum: "19296d9cba419e20162faa4515b1f64118af8464c2777fad98b36b5324c5ae92"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-NXMCore-2.1.1-snapshot.110.0-Release.zip",
            checksum: "7dc502e541cea299129a0f3059a56906f5d5c5178837c9f760cbb72c19055504"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-VonageClientSDKCore-2.1.1-snapshot.110.0-Release.zip",
            checksum: "ab46b4d6f579b836e625811f8edfe7b5f68e3e3f4d8b13a412f230791ca5153a"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-VonageClientSDKVoice-2.1.1-snapshot.110.0-Release.zip",
            checksum: "9ebf675ad568b59d2496244981bf6b78cfbe3349d2a030f0c78f4bd6d22524c9"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-VonageClientSDKEmergency-2.1.1-snapshot.110.0-Release.zip",
            checksum: "bf65a41fa61f693f66688137e91f2e6360a362c5cde04e1df66877cfbe044401"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-VonageClientSDKChat-2.1.1-snapshot.110.0-Release.zip",
            checksum: "af6d8c9a39609a3e3aa6f73ebf75bd926f57148bd44e6e14bfaaa6bcb66cb1b6"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.110.0/ios/SPM-VonageClientSDK-2.1.1-snapshot.110.0-Release.zip",
            checksum: "a7ba569df90dc01de5c16ac4d9f10c7888130f12a485fbd533f341dcc3d138c6"
        ),
    ]
)
