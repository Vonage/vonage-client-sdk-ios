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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.14.95/VonageWebRTC-99.14.95.zip",
            checksum: "19296d9cba419e20162faa4515b1f64118af8464c2777fad98b36b5324c5ae92"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-NXMCore-2.1.3-snapshot.150.0-Release.zip",
            checksum: "426dd6ee5a1581022edf78d9650b4ea70338030b48d4ebfcd8acd2a47fbc83dc"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-VonageClientSDKCore-2.1.3-snapshot.150.0-Release.zip",
            checksum: "7387d14bd0d014ba491f13ef4e148428d80c94bd210fcfbcc5523c1bca25b1ef"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-VonageClientSDKVoice-2.1.3-snapshot.150.0-Release.zip",
            checksum: "40b9197b5bedb079ab27736bf3b8dda17ce8b41448988dd7eb3f9b2279fbb08a"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-VonageClientSDKEmergency-2.1.3-snapshot.150.0-Release.zip",
            checksum: "58ed107913545826ce4a52e8e9caade5e0ce533f5571a1e5a9485496ba721dc1"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-VonageClientSDKChat-2.1.3-snapshot.150.0-Release.zip",
            checksum: "56cfc96763c2a922f1a40765c5d278f46c9637f23ef711a41343d2cf6de6db64"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.3-snapshot.150.0/ios/SPM-VonageClientSDK-2.1.3-snapshot.150.0-Release.zip",
            checksum: "68367dc31e5855a125291218f00c06bf821ecf9b9da8d9ff42835e91d2093c12"
        ),
    ]
)
