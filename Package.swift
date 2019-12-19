// swift-tools-version:5.1

import PackageDescription

let pkg = Package(name: "PromiseKit")
pkg.platforms = [
   .macOS(.v10_15)
]
pkg.products = [
    .library(name: "PromiseKit", targets: ["PromiseKit"]),
]

let pmk: Target = .target(name: "PromiseKit")
pmk.path = "Sources"
pmk.exclude = [
    "AnyPromise.swift",
    "Promise+AnyPromise.swift",
    "dispatch_promise.m",
    "GlobalState.m",
    "AnyPromise.m",
    "PMKCallVariadicBlock.m",
    "dispatch_promise.m",
    "join.m",
    "when.m",
    "NSMethodSignatureForBlock.m",
    "after.m",
    "hang.m",
    "race.m",
    "Deprecations.swift",
    "hang.m",
    "NSMethodSignatureForBlock.m",
    "join.m",
    "AnyPromise+Private.h",
    "AnyPromise.h",
    "PromiseKit.h",
    "Tests"
]
pkg.swiftLanguageVersions = [.v5]
pkg.targets = [
    pmk,
    .testTarget(name: "A+", dependencies: ["PromiseKit"]),
    .testTarget(name: "CorePromise", dependencies: ["PromiseKit"], path: "Tests/CorePromise"),
]
