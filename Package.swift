// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "bleTest",
    products: [
        .library(
            name: "bleTest",
            targets: ["bleTest"]),
    ],
    dependencies: [
        .package(url: "file:///Users/carlpeto/Documents/Code/Adafruit_BLE", .branch("spm-experiment")),
    ],
    targets: [
        .target(
            name: "bleTest",
            dependencies: ["Adafruit_BLE"],
            path: ".",
            sources: ["main.swift"]),
    ]
)