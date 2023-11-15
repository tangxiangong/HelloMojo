def foo() -> Float32:
    return 3.14

def your_function():
    # let c = a
    # if c != b:
    #     let d = b
    #     print(d)
    let x: Int = 42
    let y: Float64 = 17.0

    let z: Float32
    if x != 0:
        z = 1.0
    else:
        z = foo()
    print(z)

struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second
    
    fn __lt__(self, rhs: MyPair) -> Bool:
        return self.first < rhs.second or (self.first == rhs.first and self.second < rhs.second)

struct Complex:
    var re: Float32
    var im: Float32

    fn __init__(inout self, x: Float32):
        self.re = x
        self.im = 0.0

    fn __init__(inout self, r:Float32, i:Float32):
        self.re = r
        self.im = i

def main():
    your_function()
    print("hello world")
    for x in range(9, 0, -3):
        print(x)
