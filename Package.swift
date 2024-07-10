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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.58/VonageWebRTC-99.13.58.zip",
            checksum: "889f94380c096b1f0703b1fddd9a6b1365435dd7d13d4d91072c22b099fdba7a"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.40.0/ios/SPM-NXMCore-1.5.0-snapshot.40.0-Release.zip",
            checksum: "16096a1458ef58121d717c8452c565d9bc33a21ebb87af206f2b21dea9efd644"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.40.0/ios/SPM-VonageClientSDKCore-1.5.0-snapshot.40.0-Release.zip",
            checksum: "9356e049e67bba5aae3aa09e9d75b2e79e0c7a18145f5b00639341dcbf2a266b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.40.0/ios/SPM-VonageClientSDKChat-1.5.0-snapshot.40.0-Release.zip",
            checksum: "4ca6582fbdc2500ae04cd5b25f30b73480adbd10d5e9fddef81a6dd6fb13bb5e"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.40.0/ios/SPM-VonageClientSDKVoice-1.5.0-snapshot.40.0-Release.zip",
            checksum: "d164c2adbbe4789eb8d8fcef51375c992ca13ff4de2cad488d349c00162c19b3"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.40.0/ios/SPM-VonageClientSDK-1.5.0-snapshot.40.0-Release.zip",
            checksum: "edc1b2f14cac18ef787566bdb3ed6bb027d8994c3101d412c83bf840cb53996b"
        ),
    ]
)
