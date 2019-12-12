import Foundation
import XCTest

struct NotEqualWithAccuracy<T: FloatingPoint>: _TestCase {
    let expected: T
    let actual: T
    let accuracy: T
    let file: StaticString
    let line: UInt
}

extension NotEqualWithAccuracy {
    var message: String { "\"\(expected)\" should not be equal to \"\(actual)\" +/-(\(accuracy))" }
}

extension NotEqualWithAccuracy {
    func run() {
        XCTAssertNotEqual(expected, actual, accuracy: accuracy, file: file, line: line)
    }
}
