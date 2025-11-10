// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "RevenuecatPurchasesCapacitor",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "RevenuecatPurchasesCapacitor",
            targets: ["PurchasesPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0"),
        .package(url: "https://github.com/RevenueCat/purchases-ios.git", from: "4.39.0"),
    ],
    targets: [
        .target(
            name: "PurchasesPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "CapacitorCordova", package: "capacitor-swift-pm"),
                .product(name: "RevenueCat", package: "purchases-ios"),
            ],
            path: "ios/Sources/PurchasesPlugin"),
        .testTarget(
            name: "PurchasesPluginTests",
            dependencies: ["PurchasesPlugin"],
            path: "ios/Tests/PurchasesPluginTests"),
    ]
)
