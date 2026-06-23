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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-NXMCore-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "a0e7efef5e900ab095b9f93537e15cb9782b9c0240fcee716ca1ff2aa0f202fe"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-VonageClientSDKCore-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "66bac235123c28cb7ef414920643a40c964cd5b2abe376ca44ecc6f6c6359c03"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-VonageClientSDKVoice-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "c36d82110da29b0e1c6f4ac5fa43b1105e6dc3c7f5fbd4556f63a28060db026d"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-VonageClientSDKEmergency-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "1bfa1c80960563da6ba46f230f40498d72a3f2c0b0eeba12b6ab04200019206a"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-VonageClientSDKChat-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "746663bb8bfecd5bf98b5646c1f94734324783f59c6da7e0283996a9221a481d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.4.0-snapshot.202606232159/ios/SPM-VonageClientSDK-2.4.0-snapshot.202606232159-Release.zip",
            checksum: "26d1053d56259fe07217d8195fcffed5091e3194ff68a8886bb00435acb681bc"
        ),
    ]
)
