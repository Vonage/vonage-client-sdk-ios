// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDKPackage",
    platforms: [
        .iOS(.v15),
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
            name: "VonageClientSDKEmergency",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice",
                "VonageClientSDKEmergency"
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
                "VonageClientSDKEmergency",
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.100/VonageWebRTC-121.1.100.zip",
            checksum: "16cc7e52c0f9807c6ad3f6b378257041ecf3877c8ce62e245a8afa77f253a8fa"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-NXMCore-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "7fb693402207cddc55460805d63a6941513a162428f77fb3b2cefe1c262dfaa6"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-VonageClientSDKCore-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "6875ac4b536ea8cd13686b76cb508a6e7dc3bb7d9321bb8a27462e1beb50c3a4"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-VonageClientSDKVoice-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "3de34d6c87d9db5c83d74aeccb8ba543c1205242205fab65fd624f331fd01dcb"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-VonageClientSDKEmergency-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "8164abe7638cf937ca980cfa8f6d0225fab11ecc440cbd0a8ed58553206e44dc"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-VonageClientSDKChat-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "c3396191ac076fdcb051c84f142406d1f7a052fc42f42e40c5aa5f58414fe07a"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.5.0-snapshot.202607011338/ios/SPM-VonageClientSDK-2.5.0-snapshot.202607011338-Release.zip",
            checksum: "f835cf237b1e33f1da7ad06228c32cf952b06b1c16d439822f639bbcb7e53f8a"
        ),
    ]
)
