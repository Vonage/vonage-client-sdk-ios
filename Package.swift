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
            ],
            resource_bundles: {
                "VonageClientSDKVoice": [
                    "VonageClientSDKVoice/Resources/*.tflite"
                ]
            },
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.10.34/VonageWebRTC-99.10.34.zip",
            checksum: "a0e7f2a9dac403e3116dff6e67d14da9c232d2ea1c9205b28a357b43dc427432"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.104.0/ios/SPM-NXMCore-1.3.1-snapshot.104.0-Release.zip",
            checksum: "9e24f730148c8dde9c73dc8dd28da9321f2dbc8bae60bdd218f0b657b8990a3d"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.104.0/ios/SPM-VonageClientSDKCore-1.3.1-snapshot.104.0-Release.zip",
            checksum: "0bb7d48c91bf43cb8a16c57fd7eb06e6c49834b81c12083e13176d9c1e7544b3"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.104.0/ios/SPM-VonageClientSDKChat-1.3.1-snapshot.104.0-Release.zip",
            checksum: "971ee84a83429dfae07a1ea575b156c043bd55aa790f7479cf3f3fe4eb818459"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.104.0/ios/SPM-VonageClientSDKVoice-1.3.1-snapshot.104.0-Release.zip",
            checksum: "00d2a39c71eb093e2c9df9a7cbb8f35516b5bda1b632093e9d2d96fa3090e68b"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.104.0/ios/SPM-VonageClientSDK-1.3.1-snapshot.104.0-Release.zip",
            checksum: "82d09acbf6126471267e353b16d34119859c204f845ae6e17ec05ea9223a811c"
        ),
    ]
)
