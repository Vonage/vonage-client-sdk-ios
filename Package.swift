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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.7.23/VonageWebRTC-99.7.23.zip",
            checksum: "8104f28bb1d2c48fb3ad1d554bbc72517eb2154e92f802869f1e5b784836d77e"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.1/ios/SPM-NXMCore-1.2.0-rc.1-Release.zip",
            checksum: "6ebf8379df025e6286838c494a4935d55922deae204e61f4b7f479046ca18b44"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.1/ios/SPM-VonageClientSDKCore-1.2.0-rc.1-Release.zip",
            checksum: "cb9e738fb007adc392487c38796056e5ebe292ff07220aaab536f6692ba8e036"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.1/ios/SPM-VonageClientSDKChat-1.2.0-rc.1-Release.zip",
            checksum: "1f464d7f86b48c158b1cef34c9b11beab31efe6bf32ac5c237edca932d4cd2d2"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.1/ios/SPM-VonageClientSDKVoice-1.2.0-rc.1-Release.zip",
            checksum: "0296da774b16b0e953407922714d184fcea21e78fd3fd22057f2b9b547e884d6"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.1/ios/SPM-VonageClientSDK-1.2.0-rc.1-Release.zip",
            checksum: "0669bda27b6a214d713c26c5e7c6ab51983a7a1ca762bc190e3dccebf7c34958"
        ),
    ]
)
