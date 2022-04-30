// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SobokKit",
    
    platforms: [
        .iOS(.v13),
    ],
    
    products: [
        .library(
            name: "SobokKit",
            targets: ["SobokKit"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.1"),
        .package(url: "https://github.com/devxoul/Then", from: "3.0.0"),
    ],
    
    targets: [
        .target(
            name: "SobokKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Then", package: "Then"),
            ],
            path: "Sources",
            resources: [
                .process("Resource/Fonts")
            ]
        ),
        .testTarget(
            name: "SobokKitTests",
            dependencies: ["SobokKit"]),
    ],
    
    swiftLanguageVersions: [.v5]
)
