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
                "Models": [
                    "VonageClientSDKVoice/Resources/model_1.tflite",
                    "VonageClientSDKVoice/Resources/model_2.tflite"
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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.100.0/ios/SPM-NXMCore-1.2.1-snapshot.100.0-Release.zip",
            checksum: "2d87a72107142f790ce8703989c190bb30c6dd98c7d34bd163bfe060822330c0"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.100.0/ios/SPM-VonageClientSDKCore-1.2.1-snapshot.100.0-Release.zip",
            checksum: "9f921511d3b9967f51ee79731eee5d0da5db97c45417301245f46d7edefa550c"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.100.0/ios/SPM-VonageClientSDKChat-1.2.1-snapshot.100.0-Release.zip",
            checksum: "c9c390e8324180c9fb2af8b27aa18a5fd7eeb43c05642b3a8047dbd3bf0ed367"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.100.0/ios/SPM-VonageClientSDKVoice-1.2.1-snapshot.100.0-Release.zip",
            checksum: "4c8096e7c41eaf09503b1c9c0d3b884d1fe7eabcfaa700dbb9f665a51d76a32c"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.100.0/ios/SPM-VonageClientSDK-1.2.1-snapshot.100.0-Release.zip",
            checksum: "da2a5f755bae905d8b63f01bc2ec33040f9fea276d06988b3448180f63c5b907"
        ),
    ]
)
