import Foundation

func bisect_iterative(function F: (Double) -> (Double), lowerBound a: Double, upperBound b:Double,
                      eps: Double) -> (Double,Double,Int) {
    var a = a
    var b = b
    var m = a
    let vfa = F(a)
    var error_iter = abs(b - a)
    var iteration = 0
    while error_iter > eps {
        m = (a + b) / 2
        let vfm = F(m)
        if vfm == 0 {
            error_iter = 0
        } else if vfm * vfa < 0 {
            b = m
        } else {  // (vfm*vfa > 0)
            a = m
        }
        error_iter /= 2
        iteration += 1
        print("error_iter: ", error_iter)
    }


    return (m, error_iter, iteration)
}

func example_function_a(x: Double) -> Double {
    return pow(0.123,x) - x
}

print(bisect_iterative(function: example_function_a, lowerBound:0, upperBound:1, eps: 5e-4))

func example_function_b(x: Double) -> Double {
    let e = M_E
    return pow(x,3) - 2*(pow(e,-x))
}

print(bisect_iterative(function: example_function_b, lowerBound:0, upperBound:1, eps: 5e-5))

func simple_iterative(function F: (Double) -> (Double), initialValue x0: Double, eps: Double, nmax: Int) -> (Double,Double,Int) {
    var x0 = x0

    var x1 = F(x0)
    var error_iter = abs(x1 - x0)
    var iteration = 1
    while (error_iter > eps) && (iteration <= nmax){
        x0 = x1
        x1 = F(x0)
        error_iter = abs(x1 - x0)
        iteration += 1
    }

    if iteration > nmax{
        print("não foi possível ao fim de \(nmax) iterações encontrar a solução com o erro pretendido")
    }
    return (x1, error_iter, iteration)
}
