import Foundation
import XCTest

public protocol TestCase {
    func run()
}

// MARK: - Internal wrapper protocol
protocol _TestCase: TestCase, CustomStringConvertible {
    associatedtype T

    var expected: T { get }
    var actual: T { get }
    var file: StaticString { get }
    var line: UInt { get }

    var message: String { get }
}

// MARK: - Internal properties
extension _TestCase {
    var fileName: String { file.description.components(separatedBy: "/").last! }
}

// MARK: - CustomStringConvertible
extension _TestCase {
    var description: String { "[\(fileName):\(line)] \(message)" }
}
