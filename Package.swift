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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/121.1.100/VonageWebRTC-121.1.100.zip",
            checksum: "16cc7e52c0f9807c6ad3f6b378257041ecf3877c8ce62e245a8afa77f253a8fa"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-NXMCore-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "ce5a0d5611cc28f1a552fc948313ba199b6264350964cabd333b94ccda129484"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-VonageClientSDKCore-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "a084f44361889d49162066cb051214f80b5d78ddd8ec2b4a114ee3cdcbb1d63a"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-VonageClientSDKVoice-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "94169bc788aa60a89a09351e70f99de8852b4399faf79132c3db30bc32eda50c"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-VonageClientSDKEmergency-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "6afec977e4e048a58ea6f6c63e26e08c6744bb88a839dcc5e13b428f5ea3e6f4"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-VonageClientSDKChat-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "7a68c60b26674e5e16756a626894a308ae30a6467c6b834eead5853664a317f3"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.6.1-snapshot.202607280910/ios/SPM-VonageClientSDK-2.6.1-snapshot.202607280910-Release.zip",
            checksum: "b60fdc8ad9c3909afccc384ba686d3e8a04cd725c05cc7c44e815ae737253d39"
        ),
    ]
)
