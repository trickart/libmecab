import XCTest
@testable import libmecab

final class libmecabTests: XCTestCase {
    func testVersion() {
        XCTAssertEqual(String(cString: mecab_version()), "0.996")
    }
}
