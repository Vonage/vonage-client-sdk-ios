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
                .process("Resources")
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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.10.34/VonageWebRTC-99.10.34.zip",
            checksum: "a0e7f2a9dac403e3116dff6e67d14da9c232d2ea1c9205b28a357b43dc427432"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.12.0/ios/SPM-NXMCore-1.5.0-snapshot.12.0-Release.zip",
            checksum: "c5777ec5028ab1124d577990bdb4d04fc4799fb62503da6f02672b13c8835150"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.12.0/ios/SPM-VonageClientSDKCore-1.5.0-snapshot.12.0-Release.zip",
            checksum: "e3888bacc840283ee591ed1286d478d29b4586f1a9b5259072319a7d9e5e9a4b"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.12.0/ios/SPM-VonageClientSDKChat-1.5.0-snapshot.12.0-Release.zip",
            checksum: "4854ff78c5f84a9273ac49bb31e48f3fa0e432137dd5073b9f9be83c262d140d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.12.0/ios/SPM-VonageClientSDKVoice-1.5.0-snapshot.12.0-Release.zip",
            checksum: "4885c04caec7068d016a7562ca2f16c2b76f4e701228858b1ac7e4d6ac2a0bfa"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.5.0-snapshot.12.0/ios/SPM-VonageClientSDK-1.5.0-snapshot.12.0-Release.zip",
            checksum: "aa1d59bcc1cf8877ab3ac84e91957baeafd2f15aa5506e6a05d73cb34b863312"
        ),
    ]
)
