// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "RevenuecatPurchasesCapacitorUi",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "RevenuecatPurchasesCapacitorUi",
            targets: ["RevenueCatUIPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0"),
        .package(url: "https://github.com/RevenueCat/purchases-ios.git", from: "4.39.0"),
    ],
    targets: [
        .target(
            name: "RevenueCatUIPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "CapacitorCordova", package: "capacitor-swift-pm"),
                .product(name: "RevenueCat", package: "purchases-ios"),
            ],
            path: "ios/Sources/RevenueCatUIPlugin"),
        .testTarget(
            name: "RevenueCatUIPluginTests",
            dependencies: ["RevenueCatUIPlugin"],
            path: "ios/Tests/RevenueCatUIPluginTests"),
    ]
)
