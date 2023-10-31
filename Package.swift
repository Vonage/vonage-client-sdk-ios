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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.56.0/ios/SPM-NXMCore-1.3.0-snapshot.56.0-Release.zip",
            checksum: "720bd8bfb49a8899f337f3652602498d2c99324b602eca33de4dbd0074ec4c84"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.56.0/ios/SPM-VonageClientSDKCore-1.3.0-snapshot.56.0-Release.zip",
            checksum: "da6d86054c8820b6258e36067d7fcc7a7b03f41f837fea7be0c2b9d852d2de29"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.56.0/ios/SPM-VonageClientSDKChat-1.3.0-snapshot.56.0-Release.zip",
            checksum: "1377cd5f9692e91f9e13edca0a412bd2c7d335613b3191ae3f08e1867d53fefc"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.56.0/ios/SPM-VonageClientSDKVoice-1.3.0-snapshot.56.0-Release.zip",
            checksum: "5ca635fb98bf5ea8788f38fe6925c8e97cec022cbc1911b9a7d696a5988bb294"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.3.0-snapshot.56.0/ios/SPM-VonageClientSDK-1.3.0-snapshot.56.0-Release.zip",
            checksum: "091b7b9d70bc09c2ead8b7bafa8d7bf0772729e3022d78bfd69f353cabcad6c9"
        ),
    ]
)
