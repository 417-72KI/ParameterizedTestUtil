# ParameterizedTestUtil

Helps parameterized test in Swift

## Install:
### Swift Package Manager
```swift: Package.swift
.package(url: "https://github.com/417-72KI/ParameterizedTestUtil.git", .upToNextMajor(from: "1.0.0"))
```

### CocoaPods
TODO: Future support

## Usage:
```swift
runAll(
    expect(Int("1"), equals: 1), // means `XCTAssertEqual(Int("1"), 1)`
    expect(Double.pi, moreThan: 3.14), means `XCTAssertEqual(Double.pi > 3.14)`
    expect(Double.pi, lessThan: 3.15), means `XCTAssertTrue(Double.pi < 3.15)`
    expect(Bool("true")!, is: true) // means `XCTAssertTrue(Bool("true")!)`
)
```
