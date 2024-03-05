// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VideoPlayer",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "VideoPlayer",
            targets: ["VideoPlayer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/xiaobaiskill/GSPlayer.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "VideoPlayer",
            dependencies: ["GSPlayer"],
            path: "Sources"
        ),
    ]
)
