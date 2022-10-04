// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libextobjc",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "libextobjc", targets: ["libextobjc"])
    ],
    targets: [
        .target(name: "libextobjc", dependencies: [], path: "extobjc"),
        .testTarget(name: "libextobjcTests", dependencies: [.target(name: "libextobjc")], path: "Tests")
    ],
    cLanguageStandard: .gnu99,
    cxxLanguageStandard: .cxx11
)
