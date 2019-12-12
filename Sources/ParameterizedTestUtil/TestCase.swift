import Foundation
import XCTest

public protocol TestCase {
    func run()
}

protocol _TestCase: TestCase {
    associatedtype T

    var expected: T { get }
    var actual: T { get }
    var file: StaticString { get }
    var line: UInt { get }
}
