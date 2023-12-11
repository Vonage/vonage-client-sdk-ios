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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.105.0/ios/SPM-NXMCore-1.3.1-snapshot.105.0-Release.zip",
            checksum: "27b69fe8e50119e2b38695d2a8ad8d3a31c267e7e5bd1692bff7f92cf93cdeb9"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.105.0/ios/SPM-VonageClientSDKCore-1.3.1-snapshot.105.0-Release.zip",
            checksum: "5e6c1d8bf9dfdbd541528d5bad4d9e208a9fb6de1382687a9b2d41b8cd781f73"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.105.0/ios/SPM-VonageClientSDKChat-1.3.1-snapshot.105.0-Release.zip",
            checksum: "27f5220a0d740c6cdf9c67cd401ae17c552c7062cd559a08f60172b790d49863"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.105.0/ios/SPM-VonageClientSDKVoice-1.3.1-snapshot.105.0-Release.zip",
            checksum: "0e8c3d52a18f43043bbda51e94cd6f16096d830282552ea58fe06fa60339bd48"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.105.0/ios/SPM-VonageClientSDK-1.3.1-snapshot.105.0-Release.zip",
            checksum: "ee130cfe5e67bb45489d706ef460880c15af59f809c942accef7cdd42fe9e9eb"
        ),
    ]
)
