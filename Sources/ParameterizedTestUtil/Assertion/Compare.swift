import Foundation
import XCTest

struct LessThan<T: Comparable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertTrue(expected < actual, file: file, line: line)
    }
}

struct MoreThan<T: Comparable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertTrue(expected > actual, file: file, line: line)
    }
}
