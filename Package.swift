// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporTry",
    dependencies: [
        .package(url: "https://github.com/vapor/json.git", from: "2.0.0"),
        .package(url: "https://github.com/nifty-swift/Nifty.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "VaporTry",
            dependencies: ["JSON", "Nifty"]),
    ]
)
