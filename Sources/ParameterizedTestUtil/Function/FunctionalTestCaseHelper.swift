import Foundation

public func test<Input, Output>(_ function: @escaping (Input) -> Output) -> FunctionTestCaseBuilder<Input, Output> {
    .init(function: function)
}

public func argument<Input, Output: Equatable>(_ input: Input, shouldOutput expectedOutput: Output, file: StaticString = #file, line: UInt = #line) -> FunctionTestCaseBuilder<Input, Output>.Pattern<Input, Output> {
    .init(input: input, output: expectedOutput, file: file, line: line)
}
