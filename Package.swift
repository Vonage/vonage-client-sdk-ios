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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.14.95/VonageWebRTC-99.14.95.zip",
            checksum: "19296d9cba419e20162faa4515b1f64118af8464c2777fad98b36b5324c5ae92"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.0-rc.0/ios/SPM-NXMCore-2.1.0-rc.0-Release.zip",
            checksum: "ed0f6d6ace94382869f1f77f8cdf4dafa0442c0f85a4674f076ff6cf6033b789"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.0-rc.0/ios/SPM-VonageClientSDKCore-2.1.0-rc.0-Release.zip",
            checksum: "397f8d7f5b7e1640459a5a7aa458d9eedd66587052384f665f0000dbd23a17b0"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.0-rc.0/ios/SPM-VonageClientSDKChat-2.1.0-rc.0-Release.zip",
            checksum: "8e3fcdd1ec3ae42180df5c8b2d74d716b33136a7ac6a827873ae3351f0d62946"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.0-rc.0/ios/SPM-VonageClientSDKVoice-2.1.0-rc.0-Release.zip",
            checksum: "a5e3ef27f8e9b8377432b21b593645b17a48e6403198fdcd6cc419e69a8c4f30"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.0-rc.0/ios/SPM-VonageClientSDK-2.1.0-rc.0-Release.zip",
            checksum: "8d509088c10d82c4e63dae2cc3be59f4573d569db4ad8763895184c2bcc64bed"
        ),
    ]
)
