import Foundation
import XCTest

struct Is: _TestCase {
    let expected: Bool
    let actual: Bool
    let file: StaticString
    let line: UInt
}

extension Is {
    var message: String { "Should be \(actual)" }
}

extension Is {
    func run() {
        if actual {
            XCTAssertTrue(expected, file: file, line: line)
        } else {
            XCTAssertFalse(expected, file: file, line: line)
        }
    }
}
