import _Differentiation

public struct Foo: Differentiable, AdditiveArithmetic {
  public init(_ first: Double, _ second: Double) {
    self.first = first
    self.second = second
  }
  public let first: Double
  public let second: Double

  public mutating func move(by offset: TangentVector) {
    self = Foo(first + offset.first, second + offset.second)
  }

  public struct TangentVector: Differentiable, AdditiveArithmetic {
    public init(_ first: Double, _ second: Double) {
      self.first = first
      self.second = second
    }
    public var first: Double
    public var second: Double
  }
}

@differentiable(reverse)
func foo(_ value: Foo) -> Foo {
  Foo(value.first * value.first, value.second * value.second)
}
