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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.3-rc.0/ios/SPM-NXMCore-1.1.3-rc.0-Release.zip",
            checksum: "c8e14ab6d62ab9e40ecbe2c6d03e8796effae17062315842b3427ee0888a7aa6"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.3-rc.0/ios/SPM-VonageClientSDKCore-1.1.3-rc.0-Release.zip",
            checksum: "16c6486c948a8734dd3e914a9a7066a6b8b74d21abaec14eb1e265e360a184fa"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.3-rc.0/ios/SPM-VonageClientSDKChat-1.1.3-rc.0-Release.zip",
            checksum: "dc1d59ed9b2c2a78946b1c3d11a713d8024a9a01bbbb2d3147266c1d65f369a0"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.3-rc.0/ios/SPM-VonageClientSDKVoice-1.1.3-rc.0-Release.zip",
            checksum: "7b7f7c0b596527a2777fc9a27b8af1f24ed36b7aefa6b3bd801b2c050368fb02"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.1.3-rc.0/ios/SPM-VonageClientSDK-1.1.3-rc.0-Release.zip",
            checksum: "267817408731104dfaf1938468923ec4961a44cfcd07216f5d48004315aeab3f"
        ),
    ]
)
