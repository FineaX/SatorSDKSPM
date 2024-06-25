// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SatorSDKSPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SatorSDKSPM",
            targets: ["SatorSDKSPM"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SatorSDKSPM",
            dependencies: [
                .target(name: "SatorSDK"),
            
            ]),
        .binaryTarget(
            name:"SatorSDK",
            path: "./Sources/SatorSDK.xcframework")
    ]
)
