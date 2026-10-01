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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.116/VonageWebRTCVoice-121.1.116.zip",
            checksum: "436ced184a58270e65110a475e18790e667992e56192b52839afb18758d21e8f"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-NXMCore-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "399d0c1729183607ff2ccffda85c40b8ea76c1675630e4fa6bcc925b25fb3d46"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-VonageClientSDKCore-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "d87a582f912d722c6eced61c31394ee93b57b44eca41efc393531baa3314bd59"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-VonageClientSDKVoice-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "34a75087ded3c961c00a1ec331e09ec6b7aed63cb21f05cc1f201b44bd16d19c"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-VonageClientSDKEmergency-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "c25714c7dde8499e968219e998aaaa4336d7578ede8c97828c7e4ed15b447ba7"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-VonageClientSDKChat-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "bb774a07f63e5bc65f61bdea2f41b38c495e4622df14c9fca4d4864f7f7f885d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.7.5-snapshot.202610011214/ios/SPM-VonageClientSDK-2.7.5-snapshot.202610011214-Release.zip",
            checksum: "6e49bfa16842bce2631e4b4705921cb53831254f423305a97e3abd5b0a596268"
        ),
    ]
)
