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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.54/VonageWebRTC-99.13.54.zip",
            checksum: "ce03b54ab4dce9207e21f09581f422587d37757f248c34f3751aea8c062c0dbc"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.1/ios/SPM-NXMCore-1.6.0-beta.1-Release.zip",
            checksum: "d22e2a9152d11d29d2ee85afb09e35523033c745609d7e8a9231ba62692b5155"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.1/ios/SPM-VonageClientSDKCore-1.6.0-beta.1-Release.zip",
            checksum: "159342742001abca88891d17e5e6ab6e75c3cc9268d729fb26e54a9ba87257b3"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.1/ios/SPM-VonageClientSDKChat-1.6.0-beta.1-Release.zip",
            checksum: "9944684465e3fcb90b70086664ca5417af298a5f444a5b8c2a989d6fcf01c88d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.1/ios/SPM-VonageClientSDKVoice-1.6.0-beta.1-Release.zip",
            checksum: "88a07bc7d392e7b33750bf26e97b38d156c648c215d0f63e3185e4a6f4afc84c"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-beta.1/ios/SPM-VonageClientSDK-1.6.0-beta.1-Release.zip",
            checksum: "b16f9773255eca412c5e3f594eb4c71c27fd8eab2c12dbf2f604c80fe026d07a"
        ),
    ]
)
