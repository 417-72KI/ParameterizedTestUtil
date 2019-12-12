import Foundation

// MARK: - Equals
public func expect<T: Equatable>(_ expected: T, equals actual: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    Equals<T>(expected: expected, actual: actual, file: file, line: line)
}

public func expect<T: Equatable>(_ expected: T, notEqual actual: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    NotEqual<T>(expected: expected, actual: actual, file: file, line: line)
}

public func expect<T: FloatingPoint>(_ expected: T, equals actual: T, accuracy: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    EqualsWithAccuracy<T>(expected: expected, actual: actual, accuracy: accuracy, file: file, line: line)
}

public func expect<T: FloatingPoint>(_ expected: T, notEqual actual: T, accuracy: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    NotEqualWithAccuracy<T>(expected: expected, actual: actual, accuracy: accuracy, file: file, line: line)
}

// MARK: - Is
public func expect(_ expected: Bool, is actual: Bool, file: StaticString = #file, line: UInt = #line) -> TestCase {
    Is(expected: expected, actual: actual, file: file, line: line)
}

// MARK: - Compare
public func expect<T: Comparable>(_ expected: T, lessThan actual: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    LessThan(expected: expected, actual: actual, file: file, line: line)
}

public func expect<T: Comparable>(_ expected: T, moreThan actual: T, file: StaticString = #file, line: UInt = #line) -> TestCase {
    MoreThan(expected: expected, actual: actual, file: file, line: line)
}

// MARK: - Run
public func runAll(_ cases: TestCase...) {
    cases.forEach { $0.run() }
}
