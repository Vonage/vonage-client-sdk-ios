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
            name: "VonageClientSDK",
            targets: [
                "ExternalDependencies",
                "VonageWebRTC",
                "NXMCore",
                "VonageClientSDKCore",
                "VonageClientSDKVoice",
                "VonageClientSDKEmergency",
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
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.10.1-snapshot.202611021106/ios/SPM-NXMCore-2.10.1-snapshot.202611021106-Release.zip",
            checksum: "e248561cea3be822f9ab88b9a8a1e5288e5b3f070c8ba4ae746228a62f8f03d3"
        ),
        .binaryTarget(
            name: "VonageClientSDKCore",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.10.1-snapshot.202611021106/ios/SPM-VonageClientSDKCore-2.10.1-snapshot.202611021106-Release.zip",
            checksum: "6303ac859365a98b7dd33c480c5ce6c5f393677b0d3939b0ec1007f597973d85"
        ),
        .binaryTarget(
            name: "VonageClientSDKVoice",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.10.1-snapshot.202611021106/ios/SPM-VonageClientSDKVoice-2.10.1-snapshot.202611021106-Release.zip",
            checksum: "3dcfea0a9a8d5394d114a1982e21993f0108da05e5e2ed383c104f669dbf893f"
        ),
        .binaryTarget(
            name: "VonageClientSDKEmergency",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.10.1-snapshot.202611021106/ios/SPM-VonageClientSDKEmergency-2.10.1-snapshot.202611021106-Release.zip",
            checksum: "853f331c20abfb72a6fd2e4113e248d064a507cec8b48405aa313a0ba45bae3e"
        ),
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.10.1-snapshot.202611021106/ios/SPM-VonageClientSDK-2.10.1-snapshot.202611021106-Release.zip",
            checksum: "9a963da5d48e985bb6171985d811e40b549be4935aeef94ccdd408bde3c9dd35"
        ),
    ]
)
