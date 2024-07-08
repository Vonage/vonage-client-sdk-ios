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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.2-rc.0/ios/SPM-NXMCore-1.6.2-rc.0-Release.zip",
            checksum: "2c90cba2ca536e52aaf107db412e14bbaf0207632b934bbe7b3b12b6fc024f7e"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.2-rc.0/ios/SPM-VonageClientSDKCore-1.6.2-rc.0-Release.zip",
            checksum: "08e2be4203e85c2c276a589f51bdc33c08e097b7f66b24a0f779cf416642b7c8"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.2-rc.0/ios/SPM-VonageClientSDKChat-1.6.2-rc.0-Release.zip",
            checksum: "5e121ca26e7bc7fadd00f9948555ff4841e93fe9c234652dd334cd55be9d3db0"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.2-rc.0/ios/SPM-VonageClientSDKVoice-1.6.2-rc.0-Release.zip",
            checksum: "2abcc9a29fa5eb452331b1ef5f4b52533c5d71521d4c829c896f60106603d28e"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.2-rc.0/ios/SPM-VonageClientSDK-1.6.2-rc.0-Release.zip",
            checksum: "ed6fd43c1ec9362bcfc505d5b953e52b43970b4b45d428283759d7c75bd67c7e"
        ),
    ]
)
