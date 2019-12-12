import Foundation
import XCTest

struct MoreThan<T: Comparable>: _TestCase {
    let expected: T
    let actual: T
    let file: StaticString
    let line: UInt
}

extension MoreThan {
    var message: String { "\(expected) should be more than \(actual)" }
}

extension MoreThan {
    func run() {
        XCTAssertTrue(expected > actual, file: file, line: line)
    }
}
