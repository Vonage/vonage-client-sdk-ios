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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.13/ios/SPM-NXMCore-1.2.0-alpha.13-Release.zip",
            checksum: "d9c4b275b2c2247747bed897f73dc7db7520a10462783d370cc3b76d9c126afa"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.13/ios/SPM-VonageClientSDKCore-1.2.0-alpha.13-Release.zip",
            checksum: "1662365d14f922ed3efa4301da010dec6ab0aac47aae0a7e9f71e88996ebd851"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.13/ios/SPM-VonageClientSDKChat-1.2.0-alpha.13-Release.zip",
            checksum: "8bfb97d51c50939e0aa2e6a9e5b2421c18343bc82f015b844d0bc4dd762f3615"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.13/ios/SPM-VonageClientSDKVoice-1.2.0-alpha.13-Release.zip",
            checksum: "5dd8b8893da2f1a748c0790ac6014f435a7c26ebab116cdbfddae09468c5eaa4"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-alpha.13/ios/SPM-VonageClientSDK-1.2.0-alpha.13-Release.zip",
            checksum: "5c30c4a0ff3ecf747a87920f4e11330c0cbc5bdae4ad4bc51ec13ef51b7558c0"
        ),
    ]
)
