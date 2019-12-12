import Foundation
import XCTest

struct Equals<T: Equatable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt
}

extension Equals {
    var message: String { "\"\(expected)\" should be equal to \"\(actual)\"" }
}

extension Equals {
    func run() {
        XCTAssertEqual(expected, actual, file: file, line: line)
    }
}
