// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CardIO",
	products: [
			// Products define the executables and libraries a package produces, and make them visible to other packages.
			.library(
				name: "CardIO",
				targets: ["lib","c","objc"]),
		],
		dependencies: [
			// Dependencies declare other packages that this package depends on.
			// .package(url: /* package url */, from: "1.0.0"),
		],
		targets: [
			// Targets are the basic building blocks of a package. A target can define a module or a test suite.
			// Targets can depend on other targets in this package, and on products in packages this package depends on.
			.target(name: "lib",
					path: "Sources/lib",
					resources: [.process("libCardIO.a"), .process("libopencv_core.a"),
						.process("libopencv_imgproc.a"),
					]),
			.target(
				name: "c",
				path: "Sources/c",
				resources: [.process("CardIODetectionMode.h")],
				publicHeadersPath: "."),
			.target(
				name: "objc",
				path: "Sources/objc",
				resources: [
					.process("CardIOCreditCardInfo.h"),
					.process("CardIO.h"),
					.process("CardIOView.h"),
					.process("CardIOUtilities.h"),
					.process("CardIOViewDelegate.h"),
					.process("CardIOPaymentViewController.h"),
					.process("CardIOPaymentViewControllerDelegate.h"),
				],
				publicHeadersPath: ".")
		]
)
