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
                    "Resources/*.tflite"
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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.103.0/ios/SPM-NXMCore-1.3.1-snapshot.103.0-Release.zip",
            checksum: "021c51235ac4e5b677b93cbba10c3c9461b4d397042538227f2534428e02e211"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.103.0/ios/SPM-VonageClientSDKCore-1.3.1-snapshot.103.0-Release.zip",
            checksum: "8fd07adee2946c4ab4d1e44041e7297902347bd07cb5e5ed9c72d0746aa4016e"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.103.0/ios/SPM-VonageClientSDKChat-1.3.1-snapshot.103.0-Release.zip",
            checksum: "5b864e92e0cbf8c1b95995cae0b4bd256a184e9ea27c278d3685a37274a940f5"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.103.0/ios/SPM-VonageClientSDKVoice-1.3.1-snapshot.103.0-Release.zip",
            checksum: "4704d165f6517810b9e8f0d072ba8848c9fa1228eb8ce78cf76ac88e82c1c80d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.1-snapshot.103.0/ios/SPM-VonageClientSDK-1.3.1-snapshot.103.0-Release.zip",
            checksum: "5c15ac9ef975e15afddee6511d25a25541b9db6f51e72ef48fe277b35a16235b"
        ),
    ]
)
