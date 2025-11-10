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
        .package(url: "https://github.com/RevenueCat/purchases-hybrid-common.git", from: "11.0.0"),
    ],
    targets: [
        .target(
            name: "RevenueCatUIPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "PurchasesHybridCommonUI", package: "purchases-hybrid-common"),
            ],
            path: "ios/Sources/RevenueCatUIPlugin"),
        .testTarget(
            name: "RevenueCatUIPluginTests",
            dependencies: ["RevenueCatUIPlugin"],
            path: "ios/Tests/RevenueCatUIPluginTests")
    ]
)
