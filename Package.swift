// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SocketIO",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"]),
    ],
    dependencies: [
        .package(url: "https://github.com/atlassian-forks/Starscream", .branch("spm-support")),
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
