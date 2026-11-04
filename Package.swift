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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.116/VonageWebRTCVoice-121.1.116.zip",
            checksum: "436ced184a58270e65110a475e18790e667992e56192b52839afb18758d21e8f"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-NXMCore-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "dc08b3e37ed2afc6e557942b85ad016fac1dd2dd107d7fb8ae0a0823bbe2b816"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-VonageClientSDKCore-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "c54c873a5cade6b76ed08476e935932aaa45db6ea503a2a411da6dbdaab42ba6"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-VonageClientSDKVoice-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "1687a56a98756ef5b8172f20b98653789b914470746ad1e5d22622a7112f08e2"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-VonageClientSDKEmergency-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "d200e527d18e19af495be541755a33e809c0fdca01001859ae71042f34cb3682"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-VonageClientSDKChat-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "d3ef5121ea007416287fabd54fed7ade541619ce638807c417d500b31e73d812"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.0-snapshot.202611041223/ios/SPM-VonageClientSDK-2.11.0-snapshot.202611041223-Release.zip",
            checksum: "b2486bf4d984466b5cf49c694cf3fe467dd968bc9d9089631de5732a0e5d34fd"
        ),
    ]
)
