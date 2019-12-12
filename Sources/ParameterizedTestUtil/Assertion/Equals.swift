import Foundation
import XCTest

struct Equals<T: Equatable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertEqual(expected, actual, file: file, line: line)
    }
}

struct NotEqual<T: Equatable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertNotEqual(expected, actual, file: file, line: line)
    }
}

struct EqualsWithAccuracy<T: FloatingPoint>: _TestCase {
    let expected: T
    let actual: T
    let accuracy: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertEqual(expected, actual, accuracy: accuracy, file: file, line: line)
    }
}

struct NotEqualWithAccuracy<T: FloatingPoint>: _TestCase {
    let expected: T
    let actual: T
    let accuracy: T
    let file: StaticString
    let line: UInt

    func run() {
        XCTAssertNotEqual(expected, actual, accuracy: accuracy, file: file, line: line)
    }
}
