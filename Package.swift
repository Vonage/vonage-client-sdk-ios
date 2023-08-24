// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VonageClientSDKPackage",
    platforms: [
        .iOS(.v12),
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.2.39/VonageWebRTC-99.2.39.zip",
            checksum: "5b8912086bc55da7c938e672a473315bab707a5de6a499bc8a83555abc920ae4"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.8/ios/SPM-NXMCore-1.2.0-alpha.8-Release.zip",
            checksum: "f5abf5fd5ef5e083c82d3d965d79cddac23e58be2e7cf64550f14ba3ecfb60cc"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.8/ios/SPM-VonageClientSDKCore-1.2.0-alpha.8-Release.zip",
            checksum: "dd0ad82c1617d7e015b93738650bde5f526ca744b12537639f12001cfc17bc19"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.8/ios/SPM-VonageClientSDKChat-1.2.0-alpha.8-Release.zip",
            checksum: "124ea2ceb0bfdfaa3661510f81ed987292569b074f1fbcc7dd6018a3c2514678"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.8/ios/SPM-VonageClientSDKVoice-1.2.0-alpha.8-Release.zip",
            checksum: "96a77a7ae098faf1c9508d245a14cc8a8bb61af47bc38d12296727dd2c669362"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.8/ios/SPM-VonageClientSDK-1.2.0-alpha.8-Release.zip",
            checksum: "e94ef8ac7d45f05867a1817aa5f9a24e512965022091191a7dd3736407aeb34e"
        ),
    ]
)
