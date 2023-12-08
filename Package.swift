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
                "Resources": [
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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.102.0/ios/SPM-NXMCore-1.3.1-snapshot.102.0-Release.zip",
            checksum: "e675b5a708cadbcece43db40c641f30c8977b9de7faab500e3acad3a53e082ae"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.102.0/ios/SPM-VonageClientSDKCore-1.3.1-snapshot.102.0-Release.zip",
            checksum: "f00b8ea9fb23e8638b1d90f0047dabfee9bc342247e183901c76592a1a428b21"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.102.0/ios/SPM-VonageClientSDKChat-1.3.1-snapshot.102.0-Release.zip",
            checksum: "f9c75a232a774991e8f35f4de4a24876a09745eaa416ce2dc97528c6d3da6ff1"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.102.0/ios/SPM-VonageClientSDKVoice-1.3.1-snapshot.102.0-Release.zip",
            checksum: "682dec45169df3b3bb2a61fdee5d6e98e843ee45316dca95aca92b4f9482249b"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.102.0/ios/SPM-VonageClientSDK-1.3.1-snapshot.102.0-Release.zip",
            checksum: "ec01dac460d4ed055043d31f942155f2e718886583eae58dddee1d081c505260"
        ),
    ]
)
