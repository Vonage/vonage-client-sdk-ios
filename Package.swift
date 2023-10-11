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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.9.26/VonageWebRTC-99.9.26.zip",
            checksum: "0ac0bccec93c982d8873accb08dbcd84a150657cfa93f24343f1b74687639be0"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.37.0/ios/SPM-NXMCore-1.2.1-snapshot.37.0-Release.zip",
            checksum: "5cce50921ba825c9110a5f26b4d3cdb19e4c5e39d605ef07da15004484d07466"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.37.0/ios/SPM-VonageClientSDKCore-1.2.1-snapshot.37.0-Release.zip",
            checksum: "2e7336e39eaec7d19767d65e5cfec37e2c3f7ed233a6a6e9995be0e6cccce533"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.37.0/ios/SPM-VonageClientSDKChat-1.2.1-snapshot.37.0-Release.zip",
            checksum: "e2815e872129fdf58cae95a51c28fa692e7dbad35d1a53ea119d847ce8fe7cfc"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.37.0/ios/SPM-VonageClientSDKVoice-1.2.1-snapshot.37.0-Release.zip",
            checksum: "425b1e05be538c3e03a9ab93f3fc1a687c4f9f49eb900dea4c14ed378600046d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-snapshot.37.0/ios/SPM-VonageClientSDK-1.2.1-snapshot.37.0-Release.zip",
            checksum: "772faae4ea186c2529686cd50abe9f97048b96b651f4834c6716d3d4e7ad065b"
        ),
    ]
)
