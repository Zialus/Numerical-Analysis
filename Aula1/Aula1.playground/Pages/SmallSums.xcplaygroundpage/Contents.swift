//: [Previous](@previous)

import Foundation

print("\n~~~~~~~~~~~~~~~~~Testing sums of 0.1 with Double Type~~~~~~~~~~~~~~~~~\n")

var sumDouble: Double = 0.0
for _ in 1...100{
    sumDouble += 0.1
    print(sumDouble)
}

print("\n~~~~~~~~~~~~~~~~~Testing sums of 0.1 with Decimal Type~~~~~~~~~~~~~~~~~\n")

var sumDecimal: Decimal = 0.0
for _ in 1...100{
    sumDecimal += 0.1
    print(sumDecimal)
}

//: [Next](@next)
