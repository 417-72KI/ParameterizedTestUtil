import Foundation
import XCTest

struct NotEqual<T: Equatable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt
}

extension NotEqual {
    var message: String { "\"\(expected)\" should not be equal to \"\(actual)\"" }
}

extension NotEqual {
    func run() {
        XCTAssertNotEqual(expected, actual, file: file, line: line)
    }
}
