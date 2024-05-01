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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.54/VonageWebRTC-99.13.54.zip",
            checksum: "ce03b54ab4dce9207e21f09581f422587d37757f248c34f3751aea8c062c0dbc"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.0/ios/SPM-NXMCore-1.6.0-rc.0-Release.zip",
            checksum: "2a1227fcb46ede26d8a92d4bb2dc202b3feeda3970816eafae20efada1782499"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.0/ios/SPM-VonageClientSDKCore-1.6.0-rc.0-Release.zip",
            checksum: "4a9b52b0f5e4930f3c6c198dee064cbfd34709276aa0b40e6def8c6e663c00a3"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.0/ios/SPM-VonageClientSDKChat-1.6.0-rc.0-Release.zip",
            checksum: "589de30135d320239b92082d652713ad3fcdea69e14a4d8ce8b05a7c858ca4d1"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.0/ios/SPM-VonageClientSDKVoice-1.6.0-rc.0-Release.zip",
            checksum: "33a1ebe3e9a8d3626970edda2232ce032dbb35423a769af84523d5d60355d74a"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.0/ios/SPM-VonageClientSDK-1.6.0-rc.0-Release.zip",
            checksum: "8eebfca89ad911e81f64e7be49befcfcfdb9e87fc08944bc9edd16015a64ac14"
        ),
    ]
)
