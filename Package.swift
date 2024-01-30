// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "medallia-sense360-ios-sdk",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "medallia-sense360-ios-sdk", targets: ["SenseQuinoaLib"])
    ],

    dependencies: [
        // Here we define our package's external dependencies
        // and from where they can be fetched:
        .package(name: "SwiftyJSON", url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1")
    ],

    targets: [
        .binaryTarget(
            name: "SenseQuinoaLib",
            path: "SenseQuinoaLib.xcframework"),
        .binaryTarget(
            name: "SwiftyJSON",
            path: "SwiftyJSON.xcframework")
    ]
)

