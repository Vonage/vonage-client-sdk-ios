// swift-tools-version:5.3
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.100/VonageWebRTC-121.1.100.zip",
            checksum: "16cc7e52c0f9807c6ad3f6b378257041ecf3877c8ce62e245a8afa77f253a8fa"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.146.0/ios/SPM-NXMCore-2.1.3-snapshot.146.0-Release.zip",
            checksum: "102ec204bda909a568a5ab6366f5a8a31d4d50e379fef9f9c9cff40d4a1cd0ca"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.146.0/ios/SPM-VonageClientSDKCore-2.1.3-snapshot.146.0-Release.zip",
            checksum: "287a890091897e3b4447dd115ec8c69fc8553ead75fbc87324d3a4b8f8c9f7f6"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.146.0/ios/SPM-VonageClientSDKChat-2.1.3-snapshot.146.0-Release.zip",
            checksum: "fd77d49b1cb54bcbaafce6ac56b08250e66b2137f228846b63fe2cbbc3d8015b"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.146.0/ios/SPM-VonageClientSDKVoice-2.1.3-snapshot.146.0-Release.zip",
            checksum: "e4438af2636ec3a052dbabb0bb06962f943a162dad59ef4fbcf7e668ccff6de2"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.146.0/ios/SPM-VonageClientSDK-2.1.3-snapshot.146.0-Release.zip",
            checksum: "f06ed94bbf2e50c7eef7a505ee58dfcf088cfef27bb57289ece2f7b7f8942891"
        ),
    ]
)
