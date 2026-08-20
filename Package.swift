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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-NXMCore-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "c5d7c470bfdbe156570718b7e24e712985d0f35a4d6c428144d46ec8cd1938b1"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-VonageClientSDKCore-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "149c6bdb00d36277903771ea62a0fe0fa566baadc9df7e88eaf1269449d88c73"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-VonageClientSDKVoice-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "19da602550c66281c42aa50bdacb181507f62d07a83750d1c0693fcd9be098b8"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-VonageClientSDKEmergency-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "d17ae97062ce83c0c030d1451ee391051ad6c29782ae56c49360f27aaf61ce08"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-VonageClientSDKChat-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "9d0e616f0ab00fe529463894c99b0555ede90320882d8db0448d69accfe8eb59"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.20260820113314/ios/SPM-VonageClientSDK-2.6.2-snapshot.20260820113314-Release.zip",
            checksum: "f7a1bf9410d17193e0688114b758d111fa6a4325e6deaf5fb197a5891b6a6d36"
        ),
    ]
)
