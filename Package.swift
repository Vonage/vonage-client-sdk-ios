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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.58/VonageWebRTC-99.13.58.zip",
            checksum: "889f94380c096b1f0703b1fddd9a6b1365435dd7d13d4d91072c22b099fdba7a"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.1-alpha.2/ios/SPM-NXMCore-1.6.1-alpha.2-Release.zip",
            checksum: "c9d726b3ae6ed9a3f7c33af814f86123ff8de41efd36e7dae507d4f8d4a6cf22"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.1-alpha.2/ios/SPM-VonageClientSDKCore-1.6.1-alpha.2-Release.zip",
            checksum: "965858a6a86cb43901be36e3bd92845c859dcd1f09f9aa3cc10beeaf3b2384fe"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.1-alpha.2/ios/SPM-VonageClientSDKChat-1.6.1-alpha.2-Release.zip",
            checksum: "0b1a088c0c4d9bb397d04f3d6bb89356729406f8cf3925c61d70c9d8b7002fcd"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.1-alpha.2/ios/SPM-VonageClientSDKVoice-1.6.1-alpha.2-Release.zip",
            checksum: "e0cbe0c1f5b845f6dc5bf435971983f31f7bd62dab752a9a7db234d10b93a7ae"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.6.1-alpha.2/ios/SPM-VonageClientSDK-1.6.1-alpha.2-Release.zip",
            checksum: "25f4095df2ad489a5054c23b2a4e15a8d5abf1966c9ba6747a1a280974859ef1"
        ),
    ]
)
