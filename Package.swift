// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StickyNotes",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "StickyNotesCore",
            targets: ["StickyNotesCore"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: /* version */),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "StickyNotesCore",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "StickyNotesCoreTests",
            dependencies: ["StickyNotesCore"],
            path: "Tests"
        ),
    ]
)