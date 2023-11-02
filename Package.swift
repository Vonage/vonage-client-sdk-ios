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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.9.26/VonageWebRTC-99.9.26.zip",
            checksum: "0ac0bccec93c982d8873accb08dbcd84a150657cfa93f24343f1b74687639be0"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.59.0/ios/SPM-NXMCore-1.3.0-snapshot.59.0-Release.zip",
            checksum: "0d5d08550e691a9cd5e9dca0c4360b3f0c6360850438016247b7ca104bc9c65a"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.59.0/ios/SPM-VonageClientSDKCore-1.3.0-snapshot.59.0-Release.zip",
            checksum: "4c5c94e44f1869c6b6b1b5980ebb3e6c69a6c346e4aaf2e6cd396e4b2cc60a71"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.59.0/ios/SPM-VonageClientSDKChat-1.3.0-snapshot.59.0-Release.zip",
            checksum: "e5b31e42589d3317af440d38f94604db92e19f4172a51cda30dafe1094cb7204"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.59.0/ios/SPM-VonageClientSDKVoice-1.3.0-snapshot.59.0-Release.zip",
            checksum: "ffb3e296d29e42147523d514593e7a498a933c826b5541f56269ae24a1efb530"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.59.0/ios/SPM-VonageClientSDK-1.3.0-snapshot.59.0-Release.zip",
            checksum: "17c4d88a9f5a31dac4969f1cf1a3baec83a868c39b57a41368c8d78716909f3e"
        ),
    ]
)
