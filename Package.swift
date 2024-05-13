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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.2/ios/SPM-NXMCore-1.6.0-rc.2-Release.zip",
            checksum: "c3f750f8553babfe7e842b95f38107b6ee019c315e91156b48a331ed3c37adef"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.2/ios/SPM-VonageClientSDKCore-1.6.0-rc.2-Release.zip",
            checksum: "9cd1da2dc61e11bbaeaa9c2726e157caa50bc3dbdb647f2e8d88aee72c0c3853"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.2/ios/SPM-VonageClientSDKChat-1.6.0-rc.2-Release.zip",
            checksum: "e02751e3f3a8087812d4cc34db41a16a63584d96c8e1944bf7983815bada25c3"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.2/ios/SPM-VonageClientSDKVoice-1.6.0-rc.2-Release.zip",
            checksum: "f5c0399858f99795c0f24e8435292f0cb0ae4463b1ccbf73860b5e5eef6849d3"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.0-rc.2/ios/SPM-VonageClientSDK-1.6.0-rc.2-Release.zip",
            checksum: "468cf78f957449cc21666867a919585637bada06a42b7b3680a29cfbe9f5b1a4"
        ),
    ]
)
