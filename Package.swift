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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-NXMCore-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "447e02b5e327d83df7b6d3f56704010876cc0e19033fc1d9738e3a2f3d9c9b42"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-VonageClientSDKCore-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "9c9afb1657df3765862869368d8f29f9e36e8b201e502cc7a211cf958a7f1645"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-VonageClientSDKVoice-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "3147cb71352c02a8833f1b4e9be7a69dc98cb61adf64ad99826cf8d161275b5f"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-VonageClientSDKEmergency-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "a953b9d094fb7dbe9e4bc5b1e056c6a74ac610feae82913d9982f36fe968341c"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-VonageClientSDKChat-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "c2203df9c2bb9d20d8c677c4f68bd7d001523a6feb68520776ee8f7147488c21"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.2-snapshot.202608250912/ios/SPM-VonageClientSDK-2.6.2-snapshot.202608250912-Release.zip",
            checksum: "088573f82a85a7ef9eb93ba2969e646fb98acb3fddd42ea3feb73d4df604b4ff"
        ),
    ]
)
