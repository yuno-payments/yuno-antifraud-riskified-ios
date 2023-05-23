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
        .package(name: "RiskifiedBeacon", url: "https://github.com/Riskified/ios_sdk.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudRiskified",
            url: "https://github.com/yuno-payments/yuno-antifraud-riskified-ios/releases/download/0.0.3/YunoAntifraudRiskified.xcframework.zip",
            checksum: "f7517a6521a1786ce45381b8ea86862aada8185205ee382b7f78a877f0358c27"
        ),
       .target(
            name: "RiskifiedWrapper",
            dependencies: [ 
                .target(name: "YunoAntifraudRiskified"),
                .product(name: "RiskifiedBeacon", package: "RiskifiedBeacon")
                ],
            path: "RiskifiedWrapper"
        )
    ]
)