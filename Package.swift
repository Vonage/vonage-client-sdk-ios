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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.0.1-rc.1/ios/SPM-NXMCore-2.0.1-rc.1-Release.zip",
            checksum: "d84b62c3d3e1fd0de59062fa1340d236989f2b8f85608816e165b02ddc36e241"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.0.1-rc.1/ios/SPM-VonageClientSDKCore-2.0.1-rc.1-Release.zip",
            checksum: "40406b1fe16b9353ba6e718f9993f0f6d6be486a0a856c9b2991053bf6a27b07"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.0.1-rc.1/ios/SPM-VonageClientSDKChat-2.0.1-rc.1-Release.zip",
            checksum: "2b1b401dadf4885cbccffb52a2dc1bd70c3c9173249066ec74fc74144eda4c83"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.0.1-rc.1/ios/SPM-VonageClientSDKVoice-2.0.1-rc.1-Release.zip",
            checksum: "dd24c8ff9c5213d79e39bff248e85ff16b565f5cc4bbcb92d3bca2f4618121f2"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.0.1-rc.1/ios/SPM-VonageClientSDK-2.0.1-rc.1-Release.zip",
            checksum: "a53b8e1f2686f89d4cbbae98f07f6bf3b42594979b8a45d3adc7cc7659007c06"
        ),
    ]
)
