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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-NXMCore-2.1.1-snapshot.106.0-Release.zip",
            checksum: "f971e795c98876dc32e1ca69e44f8a64695a0cd97941de24e7c0a608c42ec9bc"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-VonageClientSDKCore-2.1.1-snapshot.106.0-Release.zip",
            checksum: "ca462e68a04aaf4c22e7ded02839eade1550d9173ece8b506fc37b1f3db0d10f"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-VonageClientSDKVoice-2.1.1-snapshot.106.0-Release.zip",
            checksum: "3b6f96c6d45049ed88bc650c61f5078df15b00d0f37d30cf61a9423ed675569b"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-VonageClientSDKEmergency-2.1.1-snapshot.106.0-Release.zip",
            checksum: "1029a1ef93decef42daaddefc678932a3b7d4d233aeefdb774e899b18a60a9b4"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-VonageClientSDKChat-2.1.1-snapshot.106.0-Release.zip",
            checksum: "aece0f67cc01649d708a3f6b918faade38b48fcff4b3744580b27902e2b6d2c5"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.106.0/ios/SPM-VonageClientSDK-2.1.1-snapshot.106.0-Release.zip",
            checksum: "d9194dd202f2bf373bce51fb7f8bddda80f9821a75efc6df8474bc355d228eff"
        ),
    ]
)
