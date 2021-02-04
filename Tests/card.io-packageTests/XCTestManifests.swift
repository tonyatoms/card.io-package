import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(card_io_packageTests.allTests),
    ]
}
#endif
