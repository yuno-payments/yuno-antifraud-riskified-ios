// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YunoAntifraudRiskified",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "YunoAntifraudRiskified",
            targets: ["YunoAntifraudRiskified", "RiskifiedWrapper"])
    ],
    dependencies: [
        .package(name: "RiskifiedBeacon", url: "https://github.com/Riskified/ios_sdk.git", .upToNextMajor(from: "1.0.0")),
        .package(name: "YunoSDK", url: "https://github.com/yuno-payments/yuno-sdk-ios.git", .upToNextMajor(from: "1.1.17"))
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudRiskified",
            url: "https://github.com/yuno-payments/yuno-antifraud-riskified-ios/releases/download/1.0.0/YunoAntifraudRiskified.xcframework.zip",
            checksum: "09d90ab395adb1d487b19cb5cf8d5069c3cb92e6414a4ebed49650bbc8dd0406"
        ),
       .target(
            name: "RiskifiedWrapper",
            dependencies: [ 
                .target(name: "YunoAntifraudRiskified"),
                .product(name: "RiskifiedBeacon", package: "RiskifiedBeacon"),
                .product(name: "YunoSDK", package: "YunoSDK")
                ],
            path: "RiskifiedWrapper"
        )
    ]
)