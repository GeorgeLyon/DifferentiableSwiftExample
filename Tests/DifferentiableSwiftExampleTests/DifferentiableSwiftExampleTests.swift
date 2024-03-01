import XCTest
import _Differentiation

@testable import DifferentiableSwiftExample

final class DifferentiableSwiftExampleTests: XCTestCase {
  func testExample() throws {
    let argument = Foo(2, 4)
    let (value, pullback) = valueWithPullback(at: argument, of: foo)

    XCTAssertEqual(value, Foo(4.0, 16.0))
    XCTAssertEqual(pullback(Foo.TangentVector(1, 1)), Foo.TangentVector(4, 8))
  }
}
