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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.0-dev.612/VonageWebRTCVoice-121.1.0-dev.612.zip",
            checksum: "4e8010b0208e4d6071d1f33ecb78da637e41961248b0742760f54966aca435a3"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-NXMCore-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "d623643b27706c1da1254648fd871aa6a58c3b49398207cae341367f20b2acea"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-VonageClientSDKCore-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "b09aac0e499378c5d3fc640e95a42a2c2a46f151d8bbf5418359e6e5aa0ef98d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-VonageClientSDKVoice-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "da061f42bee1d6750d5c09eee8d47e68d45c0d6d4d36240a5df1427f9b80fd36"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-VonageClientSDKEmergency-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "8dc83733b2c1f7ed4fb6b964db06c9e55991d661cc1bb6ba73c26534756e3884"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-VonageClientSDKChat-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "6ae073db2e545a9e7707456ba0f6e278abb65ae3fc8a211a9d447a2b223b042c"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.4-snapshot.202608271249/ios/SPM-VonageClientSDK-2.6.4-snapshot.202608271249-Release.zip",
            checksum: "d6f31a9cded192815c513be01afa9509e07f919a4b8fe473428242f6fc5715b2"
        ),
    ]
)
