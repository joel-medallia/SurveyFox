// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "medallia-sense360-ios-sdk",
    platforms: [
        .iOS(.v12)
    ],

    dependencies: [
        // Here we define our package's external dependencies
        // and from where they can be fetched:
        .package(
            name: "SJ",
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            fromt("5.0.1")
        )
    ],

    products: [
        .library(name: "medallia-sense360-ios-sdk", targets: ["SenseQuinoaLib"])
    ],




    targets: [
        .target(
            name: "Source",
            dependencies: [
                "SJ",
            ]),
        .binaryTarget(
            name: "SenseQuinoaLib",
            path: "SenseQuinoaLib.xcframework")

    ]
)
