// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSAppSync",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AWSAppSync",
            targets: ["AWSCore", "AWSAppSync", "AppSyncRealTimeClient", "SQLite", "Starscream", "Reachability"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AWSCore", path: "Frameworks/AWSCore.xcframework"),
        .binaryTarget(name: "AWSAppSync", path: "Frameworks/AWSAppSync.xcframework"),
        .binaryTarget(name: "AppSyncRealTimeClient", path: "Frameworks/AppSyncRealTimeClient.xcframework"),
        .binaryTarget(name: "SQLite", path: "Frameworks/SQLite.xcframework"),
        .binaryTarget(name: "Starscream", path: "Frameworks/Starscream.xcframework"),
        .binaryTarget(name: "Reachability", path: "Frameworks/Reachability.xcframework"),
    ]
)
