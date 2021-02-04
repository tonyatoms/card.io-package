import XCTest
@testable import card_io_package

final class card_io_packageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(card_io_package().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
