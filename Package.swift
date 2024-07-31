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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.47.0/ios/SPM-NXMCore-1.7.1-snapshot.47.0-Release.zip",
            checksum: "c7dd88a5ad064b9a1403fb25ff8e64ded1a46424b98317d7959aedc499b96ec8"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.47.0/ios/SPM-VonageClientSDKCore-1.7.1-snapshot.47.0-Release.zip",
            checksum: "f7aaddd335c706e534bf473a8acd871e888a929225e581175469a54510b183b3"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.47.0/ios/SPM-VonageClientSDKChat-1.7.1-snapshot.47.0-Release.zip",
            checksum: "56a69f4b7f6626b03e2193c3faa31cf28a889ff71cb9cd6d54eb95fb36790e0b"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.47.0/ios/SPM-VonageClientSDKVoice-1.7.1-snapshot.47.0-Release.zip",
            checksum: "fac2cef58429151698e60d35321803bea5404a8ab2b3c27640961df3fca503a0"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.1-snapshot.47.0/ios/SPM-VonageClientSDK-1.7.1-snapshot.47.0-Release.zip",
            checksum: "79dd482942d6dcf1e3c21659f3eeb5f9eee2d75f5b3648f7787493c77a5fe737"
        ),
    ]
)
