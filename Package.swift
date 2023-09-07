// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "ClairvoyantBinaryCodable",
    platforms: [.macOS(.v12), .iOS(.v14), .watchOS(.v9)],
    products: [
        .library(
            name: "ClairvoyantBinaryCodable",
            targets: ["ClairvoyantBinaryCodable"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/christophhagen/BinaryCodable", from: "2.0.0"),
        .package(url: "https://github.com/christophhagen/Clairvoyant", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "ClairvoyantBinaryCodable",
            dependencies: ["BinaryCodable", "Clairvoyant"]),
        .testTarget(
            name: "ClairvoyantBinaryCodableTests",
            dependencies: ["ClairvoyantBinaryCodable"]),
    ]
)
