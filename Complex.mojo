struct Complex:
    var re: Float64
    var im: Float64

    fn __init__(inout self, re: Float64):
        self.re = re
        self.im = 0.0

    fn __init__(inout self: Self, re: Float64, im: Float64):
        self.re = re
        self.im = im

    fn __add__(self, rhs: Complex) -> Complex:
        return Complex(self.re + rhs.re, self.im + rhs.im)

    fn __add__(self, rhs: Float64) -> Complex:
        return Complex(self.re + rhs, self.im)

    fn __radd__(self, lhs: Float64) -> Complex:
        return Complex(self.re + lhs, self.im)

    fn __repl__(self) -> String:
        return String(self.re)


fn main():
    let c = Complex(1, 2)
    let z = c + 1
    print("Hello")
    # print(z)