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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-NXMCore-2.3.1-snapshot.202.0-Release.zip",
            checksum: "e8af2d204362d82fc8fc4e498e49d28fd1c1f577bae5fc42fc03d2d03fcf27a1"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-VonageClientSDKCore-2.3.1-snapshot.202.0-Release.zip",
            checksum: "4b94f5b412851e66741554d831efdd211b28d4837a9029dbe79ca1e3085ed1df"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-VonageClientSDKVoice-2.3.1-snapshot.202.0-Release.zip",
            checksum: "0a87c65b4670f7a95267bcda4f2a714333f3b0b0d8db754213184bc0d1bd3f75"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-VonageClientSDKEmergency-2.3.1-snapshot.202.0-Release.zip",
            checksum: "9536308a9f707da274d3e25a0d697a19d33e6763a95cecda04987bf979156f83"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-VonageClientSDKChat-2.3.1-snapshot.202.0-Release.zip",
            checksum: "0c258bd4b722af6a892c5e02a189006b2b0a931f7c7f23b0182789a1e7284bad"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.1-snapshot.202.0/ios/SPM-VonageClientSDK-2.3.1-snapshot.202.0-Release.zip",
            checksum: "53b64a798a21acebe5eb6b23f61ed89c227ef57ed95c43c087b7198782bb13b2"
        ),
    ]
)
