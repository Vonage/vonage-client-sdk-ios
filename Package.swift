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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.4.0-rc.1/ios/SPM-NXMCore-1.4.0-rc.1-Release.zip",
            checksum: "6529261b51eb61f66baa49f123c0b01f416419ff07c1ba8ed7ce89e78430e2f8"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.4.0-rc.1/ios/SPM-VonageClientSDKCore-1.4.0-rc.1-Release.zip",
            checksum: "9eab0550502d3536087b3c1258b7cea0eaf747478f225c347eca88e993ebbf1e"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.4.0-rc.1/ios/SPM-VonageClientSDKChat-1.4.0-rc.1-Release.zip",
            checksum: "04461e06909f0ffc3974697362388ee090598d9422add5e221e1cef366f736ac"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.4.0-rc.1/ios/SPM-VonageClientSDKVoice-1.4.0-rc.1-Release.zip",
            checksum: "f75abc4244aca42e183e56998b5b5cd7887256ca99e7a8071549e8fb61fa075e"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.4.0-rc.1/ios/SPM-VonageClientSDK-1.4.0-rc.1-Release.zip",
            checksum: "c23b70e71f2cc69823b52e0f5514caac7f99e56a34d989ca5e145318d38e9b95"
        ),
    ]
)
