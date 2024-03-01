// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "DifferentiableSwiftExample",
  products: [
    .library(
      name: "DifferentiableSwiftExample",
      targets: ["DifferentiableSwiftExample"])
  ],
  targets: [
    .target(
      name: "DifferentiableSwiftExample"),
    .testTarget(
      name: "DifferentiableSwiftExampleTests",
      dependencies: ["DifferentiableSwiftExample"]),
  ]
)
