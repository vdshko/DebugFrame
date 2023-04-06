// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "DebugFrame",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DebugFrame",
            targets: ["DebugFrame"]),
    ],
    targets: [
        .target(
            name: "DebugFrame",
            path: "Source/DebugFrame"
        )
    ]
)
