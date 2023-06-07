// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExamplesApp",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "ExamplesApp",
            targets: ["ExamplesApp"]),
        .library(
            name: "ExampleCore",
            targets: [
                "DataAccess",
            ]),
        .library(
            name: "ExampleFeatures",
            targets: [
                "FeatureMain",
            ]),
    ],
    targets: [
        .target(
            name: "ExamplesApp",
            dependencies: [
                "DataAccess",
                "FeatureMain",
            ],
            path: "Sources/App/"
        ),
        .target(
            name: "DataAccess",
            path: "Sources/Core/DataAccess/"
        ),
        .target(
            name: "FeatureMain",
            path: "Sources/Features/Main/"
        ),
        .testTarget(
            name: "ExamplesAppTests",
            dependencies: [
                "ExamplesApp",
                "DataAccess",
                "FeatureMain",
            ]),
    ]
)
