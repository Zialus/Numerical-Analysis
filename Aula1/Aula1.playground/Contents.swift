import Foundation

var deltaDouble: Double = 1
while (1-deltaDouble) < 1{
    deltaDouble=deltaDouble/10
    print(deltaDouble)
}

deltaDouble

var deltaDecimal: Decimal = 1
while (1-deltaDecimal) < 1{
    deltaDecimal=deltaDecimal/10
    print(deltaDecimal)
}

deltaDecimal

var sumDouble: Double = 0.0
for _ in 1...100{
    sumDouble += 0.1
    print(sumDouble)
}

sumDouble

var sumDecimal: Decimal = 0.0
for _ in 1...100{
    sumDecimal += 0.1
    print(sumDecimal)
}

sumDecimal
