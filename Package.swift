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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-beta.5/ios/SPM-NXMCore-1.2.1-beta.5-Release.zip",
            checksum: "77a2bca1d7af1d3cf2201a6ef75daca8eb4cfbcdadae25dcc6b4707033776f70"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-beta.5/ios/SPM-VonageClientSDKCore-1.2.1-beta.5-Release.zip",
            checksum: "9d2f646429383bd1e7c9e57d621f3dddb4bcf65cc7df1344ded1d5dd744d40bc"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-beta.5/ios/SPM-VonageClientSDKChat-1.2.1-beta.5-Release.zip",
            checksum: "bd636b27e33ebc465ee0f2f03a03f860d39bb520c0d5df5bc910b831805f9880"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-beta.5/ios/SPM-VonageClientSDKVoice-1.2.1-beta.5-Release.zip",
            checksum: "48f3b367240b15e2a32fe6f3a58970efe92f45e504500f91d3885b185a6b1fa3"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.2.1-beta.5/ios/SPM-VonageClientSDK-1.2.1-beta.5-Release.zip",
            checksum: "b828708c2db4e13a17b436639933aa246fb19f14f38448a81b342f03ed843be9"
        ),
    ]
)
