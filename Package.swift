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
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-webrtc/pod/vonagewebrtc/release/99.14.95/VonageWebRTC-99.14.95.zip",
            checksum: "19296d9cba419e20162faa4515b1f64118af8464c2777fad98b36b5324c5ae92"
        ),
        // Internal Frameworks
        .binaryTarget(
            name: "NXMCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-NXMCore-2.1.1-snapshot.114.0-Release.zip",
            checksum: "2926e2b52ce9f03ca6db2be04b643792b7f12787df5eb94a06760baa9eb533ed"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-VonageClientSDKCore-2.1.1-snapshot.114.0-Release.zip",
            checksum: "bd215b6a8775f90d3585d92a9112d5590be5227982c893427be6de091f13715b"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-VonageClientSDKVoice-2.1.1-snapshot.114.0-Release.zip",
            checksum: "ef28dc61a95cd018f5cd7a1a81ff24f2950a0757ed74cf09e95817d276f42c5c"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-VonageClientSDKEmergency-2.1.1-snapshot.114.0-Release.zip",
            checksum: "51d63735cace00e4e8c265addbb270b18787324edb30d1d6ef3e51fb931b133a"
        ),
        .binaryTarget(
            name: "VonageClientSDKChat",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-VonageClientSDKChat-2.1.1-snapshot.114.0-Release.zip",
            checksum: "b5d7b7e4f4f249b7c8c72a43d1ef9a9c2262dd63ec5f5c62f916a8d3412ed317"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.1.1-snapshot.114.0/ios/SPM-VonageClientSDK-2.1.1-snapshot.114.0-Release.zip",
            checksum: "43be43ed8afa0c4f47057eb94bb63682f13cf687fa69e99cfc2693775565cbf5"
        ),
    ]
)
