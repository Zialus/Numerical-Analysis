//: [Previous](@previous)

import Foundation

print("~~~~~~~~~~~~~~~~~~~~~~~~TESTING WITH DOUBLE TYPE~~~~~~~~~~~~~~~~~~~~~~~~")

for i in 1...127{ //Can't go beyond 127
    let divisor = Double(pow(10,i).description)!
    print("Using: \(divisor) as the divisor\n")
    var deltaDouble: Double = 1
    while (1-deltaDouble) < 1{
        deltaDouble=deltaDouble/divisor
        print(deltaDouble)
    }
    print()
}

print("~~~~~~~~~~~~~~~~~~~~~~~~TESTING WITH DECIMAL TYPE~~~~~~~~~~~~~~~~~~~~~~~~")

for i in 1...90{ //Can't go beyond 90
    let divisor = pow(10,i)
    print("Using: \(divisor) as the divisor\n")
    var deltaDecimal: Decimal = 1
    while (1-deltaDecimal) < 1{
        deltaDecimal=deltaDecimal/divisor
        print(deltaDecimal)
    }
    print()
}

//: [Next](@next)
