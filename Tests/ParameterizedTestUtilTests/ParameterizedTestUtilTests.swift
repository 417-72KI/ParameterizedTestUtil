import XCTest
import ParameterizedTestUtil

final class ParameterizedTestUtilTests: XCTestCase {
    override class func setUp() {
        super.setUp()
        ParameterizedTestUtil.needsDump = true
    }

    func testEquals() {
        runAll(
            expect(Int("1"), equals: 1),
            expect(Bool("true"), equals: true)
        )
    }

    func testNotEqual() {
        runAll(
            expect(Int("0"), notEqual: 1)
        )
    }

    func testEqualsWithAccuracy() {
        runAll(
            expect(Double("3.1")!, equals: 3.14, accuracy: 0.1),
            expect(Double("3.14")!, equals: 3.14, accuracy: 0.01),
            expect(Double("3.141592653589793")!, equals: Double.pi, accuracy: 0.000000000000001)
        )
    }

    func testNotEqualWithAccuracy() {
        runAll(
            expect(Double("3.1")!, notEqual: 3.14, accuracy: 0.01),
            expect(Double("3.14159265358979")!, notEqual: Double.pi, accuracy: 0.000000000000001)
        )
    }

    func testIs() {
        runAll(
            expect(Double.nan.isNaN, is: true),
            expect(Double.nan.isFinite, is: false)
        )
    }

    func testLessThan() {
        runAll(
            expect(0, lessThan: 1),
            expect(Double.pi, lessThan: 3.15),
            expect(-Double.infinity, lessThan: 0)
        )
    }

    func testMoreThan() {
        runAll(
            expect(100, moreThan: 0),
            expect(Double.pi, moreThan: 3.14),
            expect(Double.infinity, moreThan: 0)
        )
    }
}
