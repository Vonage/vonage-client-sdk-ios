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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.29.0/ios/SPM-NXMCore-1.5.0-snapshot.29.0-Release.zip",
            checksum: "36a38bbc3ff513858c816ad3061b3168bd11b62c87b193dfaa467501e9b26318"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.29.0/ios/SPM-VonageClientSDKCore-1.5.0-snapshot.29.0-Release.zip",
            checksum: "035cca2a3fcd9a2e32fa87fc95a536925851dde7a89632da99cdb4362f6ae15c"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.29.0/ios/SPM-VonageClientSDKChat-1.5.0-snapshot.29.0-Release.zip",
            checksum: "a921acd7a9dfe5d3112fcf76266be247d129ba9dc2259497ce3a7c9f44e7db2b"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.29.0/ios/SPM-VonageClientSDKVoice-1.5.0-snapshot.29.0-Release.zip",
            checksum: "4c87e854763fbd4fc3d998fb51d6c2a31f25ae32f56f9ff4f3d202822f363f3b"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.29.0/ios/SPM-VonageClientSDK-1.5.0-snapshot.29.0-Release.zip",
            checksum: "653ba9d10fcc5fde02beb93986ac6b3442b59f34db128fbcda7780e79a916b04"
        ),
    ]
)
