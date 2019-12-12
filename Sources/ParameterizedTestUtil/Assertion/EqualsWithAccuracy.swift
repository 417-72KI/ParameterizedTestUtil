import Foundation
import XCTest

struct EqualsWithAccuracy<T: FloatingPoint>: _TestCase {
    let expected: T
    let actual: T
    let accuracy: T
    let file: StaticString
    let line: UInt
}

extension EqualsWithAccuracy {
    var message: String { "\"\(expected)\" should be equal to \"\(actual)\" +/-(\(accuracy))" }
}

extension EqualsWithAccuracy {
    func run() {
        XCTAssertEqual(expected, actual, accuracy: accuracy, file: file, line: line)
    }
}
