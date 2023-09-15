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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-alpha.0/ios/SPM-NXMCore-1.2.1-alpha.0-Release.zip",
            checksum: "5e5b539d78d8a318ee630c981ab9c98025679e04107f67fa638e7df5faa8496a"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-alpha.0/ios/SPM-VonageClientSDKCore-1.2.1-alpha.0-Release.zip",
            checksum: "6a875e1fbeaa0aa82a246a06aae5a2a50ad96a37f6203543cb2aee6be135bed8"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-alpha.0/ios/SPM-VonageClientSDKChat-1.2.1-alpha.0-Release.zip",
            checksum: "bceb9b95aa74c8da7f78b3620740372885116bab415b5b405dc9842a243aa9e1"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-alpha.0/ios/SPM-VonageClientSDKVoice-1.2.1-alpha.0-Release.zip",
            checksum: "f8c04a374a9314b0764ca2f8cd6ec6280bcebca62ee0d2fae4bf5b1a9c17eee8"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-alpha.0/ios/SPM-VonageClientSDK-1.2.1-alpha.0-Release.zip",
            checksum: "006ef9cbaadfbbbe95caf5961bdd35d237cf8445b4e62a4b6b28400344f5ca19"
        ),
    ]
)
