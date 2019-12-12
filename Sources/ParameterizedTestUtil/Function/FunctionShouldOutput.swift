import Foundation
import XCTest

struct FunctionShouldOutput<Input, Output: Equatable>: _TestCase {
    let input: Input
    let function: (Input) -> Output
    let actual: Output

    let file: StaticString
    let line: UInt
}

extension FunctionShouldOutput {
    var expected: Output { function(input) }

    var message: String { "\"\(String(describing: function))\" with \(input) should return \"\(actual)\"" }
}

extension FunctionShouldOutput {
    func run() {
        XCTAssertEqual(expected, actual, file: file, line: line)
    }
}
