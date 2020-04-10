import XCTest
@testable import todo_app

final class todo_appTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(todo_app().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
