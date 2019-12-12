import Foundation

public struct FunctionTestCaseBuilder<Input, Output: Equatable> {
    let function: (Input) -> Output
}

public extension FunctionTestCaseBuilder {
    func with(_ patterns: Pattern<Input, Output>...) -> [TestCase] {
        with(patterns)
    }

    func with(_ patterns: [Pattern<Input, Output>]) -> [TestCase] {
        patterns.map { FunctionShouldOutput(input: $0.input, function: function, actual: $0.output, file: $0.file, line: $0.line) }
    }
}

public extension FunctionTestCaseBuilder {
    struct Pattern<Input, Output> {
        let input: Input
        let output: Output

        let file: StaticString
        let line: UInt
    }
}
