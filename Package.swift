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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.48.0/ios/SPM-NXMCore-1.7.1-snapshot.48.0-Release.zip",
            checksum: "093bf74c5f98fd6fb6c603c08eb4d191a0e5828711ee5adf924ed29e659f3b16"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.48.0/ios/SPM-VonageClientSDKCore-1.7.1-snapshot.48.0-Release.zip",
            checksum: "4e3b95245f30adbce05cad0f38bdd33b77372283f3c2570485223db51e738330"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.48.0/ios/SPM-VonageClientSDKChat-1.7.1-snapshot.48.0-Release.zip",
            checksum: "40c061c5a2361691173a2f0d22d79fc5f92c667b5bca8a9d4a494520a30bf126"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.48.0/ios/SPM-VonageClientSDKVoice-1.7.1-snapshot.48.0-Release.zip",
            checksum: "32e52dfaefc10558e5aea719a82e545d444bd817cbaf3076688bcc1231855292"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.48.0/ios/SPM-VonageClientSDK-1.7.1-snapshot.48.0-Release.zip",
            checksum: "8f45168ad3fb504003cfa3d57fde8df226702f993b71e9895dd5afe0ddd92e9b"
        ),
    ]
)
