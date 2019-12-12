import Foundation

public extension Array where Element == TestCase {
    func runAll() {
        self.forEach {
            if ParameterizedTestUtil.needsDump { print($0) }
            $0.run()
        }
    }
}
