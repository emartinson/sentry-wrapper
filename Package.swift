// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SentryWrapper",
    platforms: [
        .iOS(.v14),
        .macOS(.v13)
    ],
    products: [
        .library(name: "SentryWrapper", targets: ["SentryWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "Sentry",
            url: "https://github.com/getsentry/sentry-cocoa/releases/download/9.13.0/Sentry.xcframework.zip",
            checksum: "df955598dc453c47f257e6ace28b33922a77297849c7adc4810cb1e706f56c5c"
        ),
        .target(
            name: "SentryWrapper",
            dependencies: ["Sentry"]
        )
    ]
)
