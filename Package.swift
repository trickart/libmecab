// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libmecab",
    products: [
        .library(
            name: "libmecab",
            targets: ["libmecab"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "libmecab",
            dependencies: [],
            sources: ["src"],
            cSettings: [
                .define("HAVE_CONFIG_H"),
                .define("MECAB_DEFAULT_RC", to: "\"/usr/local/etc/mecabrc\""),
                .define("DIC_VERSION", to: "102")
            ],
            linkerSettings: [.linkedLibrary("iconv")]
        ),
        .testTarget(
            name: "libmecabTests",
            dependencies: ["libmecab"]
        )
    ]
)
