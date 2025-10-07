// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YylMijickCamera",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "YylMijickCamera",
            targets: ["YylMijickCamera"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Mijick/Timer", exact: "2.0.0")
    ],
    targets: [
        .target(
            name: "YylMijickCamera",
            dependencies: [.product(name: "MijickTimer", package: "Timer")],
            path: "Sources",
            resources: [.process("Internal/Assets")]
        ),
        .testTarget(
            name: "YylMijickCameraTests",
            dependencies: ["YylMijickCamera"],
            path: "Tests"
        )
    ],
    swiftLanguageModes: [.v6]
)
