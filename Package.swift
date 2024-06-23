// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
//.package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
//.package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.1"),
//.package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0"))
import PackageDescription

let package = Package(
    name: "SatorSDKSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SatorSDKSPM", targets: ["SatorSDKSPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
        .package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.1"),
        .package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0"))
    ],
    targets: [
        .target(
            name: "SatorSDKSPM",
            dependencies: [
                .target(name: "SatorSDK"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "MJRefresh", package: "MJRefresh"),
                .product(name: "MBProgressHUD", package: "MBProgressHUD"),
            
            ]),
        .binaryTarget(name:"SatorSDK", path: "SatorSDK.xcframework")
    ]
)
