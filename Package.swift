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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.7.23/VonageWebRTC-99.7.23.zip",
            checksum: "8104f28bb1d2c48fb3ad1d554bbc72517eb2154e92f802869f1e5b784836d77e"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.0/ios/SPM-NXMCore-1.2.0-rc.0-Release.zip",
            checksum: "2769f3b89f5fc038d4ce0a190b51782fe30d8db9089fd95dcf8b0dc00c3e1971"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.0/ios/SPM-VonageClientSDKCore-1.2.0-rc.0-Release.zip",
            checksum: "d240e7d1f044e9c679fb2e61d10854db20ad0dc9d16807b882788a67b7b09c4a"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.0/ios/SPM-VonageClientSDKChat-1.2.0-rc.0-Release.zip",
            checksum: "087ef3651e81d42b5df6a2cd8ba12bed03baff2b9561645d92eed0679b7df224"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.0/ios/SPM-VonageClientSDKVoice-1.2.0-rc.0-Release.zip",
            checksum: "3ac894b5d7d43a649144a523353cfaa8ac8965982b14700b1ed4be1b0a0fc42d"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.0-rc.0/ios/SPM-VonageClientSDK-1.2.0-rc.0-Release.zip",
            checksum: "f3e7ab38708903ab2c0e05acef7dc2ba3e5b663dac604b0fb33015751a2b1ee4"
        ),
    ]
)
