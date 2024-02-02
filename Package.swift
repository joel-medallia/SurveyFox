// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "medallia-sense360-ios-sdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "medallia-sense360-ios-sdk",
            targets: ["SenseQuinoaLibWrapper"]
        )
    ],
    dependencies: [
        .package(name: "SwiftyJSON", url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
        .package(name: "SwiftJWT", url: "https://github.com/Kitura/Swift-JWT.git", from: "4.0.1"),
        .package(name: "Reachability", url: "https://github.com/ashleymills/Reachability.swift.git", from: "5.0.0"),
        .package(name: "DataCompression", url: "https://github.com/mw99/DataCompression.git", from: "3.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "SenseQuinoaLib",
            path: "SenseQuinoaLib.xcframework"
        ),
        .target(name: "SenseQuinoaLibWrapper",
                dependencies: [
                    .target(name: "SenseQuinoaLib", condition: .when(platforms: .some([.iOS]))),
                    "SwiftyJSON",
                    "SwiftJWT"
                ],
                path: "SenseQuinoaLibWrapper"
        )
    ]
)
