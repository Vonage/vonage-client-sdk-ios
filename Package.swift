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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-NXMCore-2.3.0-snapshot.167.0-Release.zip",
            checksum: "f1e5694851992086af4f32bc66dcb0efc7764e2f4c35e760357a4dabbcdbf2da"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-VonageClientSDKCore-2.3.0-snapshot.167.0-Release.zip",
            checksum: "03d6ad8e2bf041631e748e8ceabc8492e967d40865521e4a921487f873c3fdcc"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-VonageClientSDKVoice-2.3.0-snapshot.167.0-Release.zip",
            checksum: "2874717cbf25e5eee19095e89d581138c32077584da27e80a5532bb2084c8bc9"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-VonageClientSDKEmergency-2.3.0-snapshot.167.0-Release.zip",
            checksum: "f1c8345f66ad97d287c1e0b5647f7c17e988f6bdc0bdcea15d7d2b4e1f70901c"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-VonageClientSDKChat-2.3.0-snapshot.167.0-Release.zip",
            checksum: "479ae534bf453fcf32a2a022772ee96aaf7d7aeebd1f9cc4a08599368e779994"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.3.0-snapshot.167.0/ios/SPM-VonageClientSDK-2.3.0-snapshot.167.0-Release.zip",
            checksum: "aecb91d7d7e4b0514aaeb71acf55b95b4c0211c537b2895494c6197fcbb75b8f"
        ),
    ]
)
