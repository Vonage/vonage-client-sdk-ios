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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.10.34/VonageWebRTC-99.10.34.zip",
            checksum: "a0e7f2a9dac403e3116dff6e67d14da9c232d2ea1c9205b28a357b43dc427432"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-snapshot.21.0/ios/SPM-NXMCore-1.5.2-snapshot.21.0-Release.zip",
            checksum: "ba571d7cd5ad34bb9485d7ac4b0216b7aaaae987e101d7bbaac6bfb24a036aa8"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-snapshot.21.0/ios/SPM-VonageClientSDKCore-1.5.2-snapshot.21.0-Release.zip",
            checksum: "dac91a200f0fe6732d1b578d06ce617736fc178ac6524e98151681ab8cbc22d5"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-snapshot.21.0/ios/SPM-VonageClientSDKChat-1.5.2-snapshot.21.0-Release.zip",
            checksum: "92045d36f7ad475e14be068a0ecb0163cdd925c6737e7ddb24f641d0babc12d2"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-snapshot.21.0/ios/SPM-VonageClientSDKVoice-1.5.2-snapshot.21.0-Release.zip",
            checksum: "cefe7a2c3a02fe1ca6b64f652ed85302a2bf76fad6ec3c74790a3cb07455b878"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.2-snapshot.21.0/ios/SPM-VonageClientSDK-1.5.2-snapshot.21.0-Release.zip",
            checksum: "222c9b84ebae8242f488dcab4014b8e627b484822e0f743e06cc9162d26fc2c9"
        ),
    ]
)
