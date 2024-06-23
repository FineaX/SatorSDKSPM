// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
//.package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
//.package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.1"),
//.package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0"))
import PackageDescription

let package = Package(
    name: "SatorSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SatorSDK", targets: ["SatorSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
        .package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.1"),
        .package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0"))
    ],
    targets: [
        .binaryTarget(
            name: "SatorSDK",
            url:"https://github.com/FineaX/SatorSDKDemo/releases/download/1.0.1/SatorSDK.xcframework.zip",
            checksum: "b9a7139cd27f13c135beaabf915f364d094041a58785d51c3032a394c0651b5e"
        )
    ]
)

