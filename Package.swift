// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDK",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "VonageClientSDK", targets: ["VonageClientSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "VonageClientSDK",
            url: "https://cs-sdk.main0.api.rtc.prd.euw1.vonagenetworks.net/public/2.11.2-snapshot.202611051140/ios/VonageClientSDK-2.11.2-snapshot.202611051140.zip",
            checksum: "4b2beed1df7c2fdbeffaa05e4dfcb447b4795d03676a6cc588596af5c5a0a012"
        ),
    ]
)
