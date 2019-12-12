import Foundation
import XCTest

struct LessThan<T: Comparable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt
}

extension LessThan {
    var message: String { "\(expected) should be less than \(actual)" }
}

extension LessThan {
    func run() {
        XCTAssertTrue(expected < actual, file: file, line: line)
    }
}
