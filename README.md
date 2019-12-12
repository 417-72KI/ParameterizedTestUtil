# ParameterizedTestUtil
[![Build Status](https://travis-ci.com/417-72KI/ParameterizedTestUtil.svg?branch=master)](https://travis-ci.com/417-72KI/ParameterizedTestUtil)
[![GitHub release](https://img.shields.io/github/release/417-72KI/ParameterizedTestUtil/all.svg)](https://github.com/417-72KI/ParameterizedTestUtil/releases)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/417-72KI/ParameterizedTestUtil/master/LICENSE)

Helps parameterized test in Swift

## Install
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
    expect(Double.pi, moreThan: 3.14), // means `XCTAssertTrue(Double.pi > 3.14)`
    expect(Double.pi, lessThan: 3.15), // means `XCTAssertTrue(Double.pi < 3.15)`
    expect(Bool("true")!, is: true) // means `XCTAssertTrue(Bool("true")!)`
)
```
