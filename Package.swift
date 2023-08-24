// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "bleTest",
    products: [
        .executable(
            name: "bleTest",
            targets: ["bleTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/microswift-packages/Adafruit_BluefruitLE_nRF51", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "bleTest",
            dependencies: ["Adafruit_BluefruitLE_nRF51"],
            path: ".",
            sources: ["main.swift"]),
    ]
)