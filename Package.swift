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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.13.76/VonageWebRTC-99.13.76.zip",
            checksum: "ac968fe22cfb9b768979c627799fc7aa3511a29d0f2cd06ddd186359a8734b28"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.3-snapshot.58.0/ios/SPM-NXMCore-1.7.3-snapshot.58.0-Release.zip",
            checksum: "a04fd34ff989aa10b60be5c68bc2759c046b3df1a013288051fa20bc18b6e51c"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.3-snapshot.58.0/ios/SPM-VonageClientSDKCore-1.7.3-snapshot.58.0-Release.zip",
            checksum: "895eafc9d81b5403e71214b536e83e9da57d72113bc5cd33e457c59458bdb155"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.3-snapshot.58.0/ios/SPM-VonageClientSDKChat-1.7.3-snapshot.58.0-Release.zip",
            checksum: "d17f5e7c486c6a6193b876d14a84b14cb205e3bd6c6ddf1e98e9cb7fed90ea92"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.3-snapshot.58.0/ios/SPM-VonageClientSDKVoice-1.7.3-snapshot.58.0-Release.zip",
            checksum: "ab858d03f3a2dba9d45720e9ec923f52c51dcae1cc9c64cbd29158bc9c701c28"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/1.7.3-snapshot.58.0/ios/SPM-VonageClientSDK-1.7.3-snapshot.58.0-Release.zip",
            checksum: "f41db06f78c2620a831587d0c77d6a3df0c3caf2843dee1003a3e8a0bc41df9a"
        ),
    ]
)
