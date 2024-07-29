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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.76/VonageWebRTC-99.13.76.zip",
            checksum: "ac968fe22cfb9b768979c627799fc7aa3511a29d0f2cd06ddd186359a8734b28"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-rc.0/ios/SPM-NXMCore-1.7.0-rc.0-Release.zip",
            checksum: "2295bf0cee2cffbdd446b299ea048f4e7703337f4058700d172387088086bdac"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-rc.0/ios/SPM-VonageClientSDKCore-1.7.0-rc.0-Release.zip",
            checksum: "c0be67bfd476028d6d89756e78201cad7a6114c7b184a97896f8af266bb0e4b0"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-rc.0/ios/SPM-VonageClientSDKChat-1.7.0-rc.0-Release.zip",
            checksum: "0b26699e15fb9914887ff5e0c3ae76e976bfc2fb90ca27a67da8941f5457118a"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-rc.0/ios/SPM-VonageClientSDKVoice-1.7.0-rc.0-Release.zip",
            checksum: "f02c4d6ee7e71e50e26bab8840de589a93dcb1c21d7cbad15151cbab8e8f7ce7"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-rc.0/ios/SPM-VonageClientSDK-1.7.0-rc.0-Release.zip",
            checksum: "f4d31f2d5c17b1826f10bee1fec176b0969a295df0c9793ed4a4950acd0a014b"
        ),
    ]
)
