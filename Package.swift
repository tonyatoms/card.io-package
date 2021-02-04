// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "card.io-package",
	targets: [.target(name: "c", dependencies:["lib"]),
			  .target(name: "objc", dependencies:["lib"]),
	]
)
