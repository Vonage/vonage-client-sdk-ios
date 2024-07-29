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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-beta.0/ios/SPM-NXMCore-1.7.0-beta.0-Release.zip",
            checksum: "62c3fc0d3a78362397583e6bb9a8e89e23fe16512642221ab21c14c0221a6346"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-beta.0/ios/SPM-VonageClientSDKCore-1.7.0-beta.0-Release.zip",
            checksum: "651f0db2d21ca41c9f530d67f051e2bb9b06a790b9182fc649ab467d9c0be76b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-beta.0/ios/SPM-VonageClientSDKChat-1.7.0-beta.0-Release.zip",
            checksum: "b958f7654365c2ebfab68fe65fee9cef1898fde87219ff6fa79f6f12e75217ac"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-beta.0/ios/SPM-VonageClientSDKVoice-1.7.0-beta.0-Release.zip",
            checksum: "e9a4fbfebdcc8bfb45a52b5b6bd6d0698fa20183aa6a961ee6834ad0f0b49509"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.0-beta.0/ios/SPM-VonageClientSDK-1.7.0-beta.0-Release.zip",
            checksum: "334d2faca72a167529f15dd5b6de5c34b45b7532669a17e2744569f118a5b5ec"
        ),
    ]
)
