import Foundation

// https://stackoverflow.com/a/39215372/4299590
extension String {
    func leftPadding(toLength: Int, withPad character: Character) -> String {
        let stringLength = self.count
        if stringLength < toLength {
            return String(repeatElement(character, count: toLength - stringLength)) + self
        } else {
            return String(self.suffix(toLength))
        }
    }
}

extension Formatter {
    static let scientific: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.positiveFormat = "0.###E+0"
        formatter.exponentSymbol = "e"
        return formatter
    }()
}

extension Numeric {
    var scientificFormatted: String {
        return Formatter.scientific.string(for: self) ?? ""
    }
}

let x = 0.099
let X = 0.1

let deltaX = X - x

let absolute_errX = deltaX
let relative_errX = deltaX/X

print("X:")
print(absolute_errX)
print(relative_errX)

let y = 0.011
let Y = 0.01

let deltaY = Y - y

let absolute_errY = deltaY
let relative_errY = deltaY/Y

print("Y:")
print(absolute_errY)
print(relative_errY)

func f(x: Double) -> Double {
    return x * (sqrt(x+1) - sqrt(x))
}

for i in 0...40{
    let x_as_double = Double(pow(10,i).description)! // This looks hacky but it is what it is.
    let fx = f(x: x_as_double )
//    let x_test = String(format: "%40.0llllf", x_as_double)
//    let x_left_padded = x_test.leftPadding(toLength: 40, withPad: " ")
//    let x_left_padded = String(x_as_double.scientificFormatted).leftPadding(toLength: 40, withPad: " ")
    let x_left_padded = String(x_as_double).leftPadding(toLength: 40, withPad: " ")
    print("\(x_left_padded) ==> \(fx)")
}


let sqrt_of_3 = 1.732

let exact_1 = 1 / pow((2 + sqrt(3)),4)
let approx_1 = 1 / pow((2 + sqrt_of_3),4)

print("1:")
print(exact_1)
print(approx_1)

let exact_2 = 97 - 56 * sqrt(3)
let approx_2 = 97 - 56 * sqrt_of_3

print("2:")
print(exact_2)
print(approx_2)
