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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.0.0-localtest/ios/SPM-NXMCore-1.0.0-localtest-Release.zip",
            checksum: "8c3adce515e74734e62f2cd4d95d74b1aa71eef82ac193a4ed96337c2542db57"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.0.0-localtest/ios/SPM-VonageClientSDKCore-1.0.0-localtest-Release.zip",
            checksum: "6aa0c372fb5b678575c5b2582d274f0fd81bb2684100583b83c9096b0cd669b9"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.0.0-localtest/ios/SPM-VonageClientSDKChat-1.0.0-localtest-Release.zip",
            checksum: "fb56408218485710141a8b2668c45a371664c9df5dc5d846c5bc30b866294f3d"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.0.0-localtest/ios/SPM-VonageClientSDKVoice-1.0.0-localtest-Release.zip",
            checksum: "c067cc5c6e96f78b750c8d778c17abed6e5522fa454bc60b1a350975fa206fda"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.0.0-localtest/ios/SPM-VonageClientSDK-1.0.0-localtest-Release.zip",
            checksum: "740950b01e89c8737ac98007c30059bfc4fba76c464044c7e8b71ff2b3605a4a"
        ),
    ]
)
