//
// Created by Anatol Uarmolovich on 23.08.22.
//

#ifndef SIMPLECALCULATOR_CALCULATORCORE_H
#define SIMPLECALCULATOR_CALCULATORCORE_H

namespace SimpleCalculator {
    class CalculatorCore {
    public:
        static double Multiply(double a, double b);
        static double Divide(double a, double b);
        static double Sum(double a, double b);
        static double Subtraction(double a, double b);
        static double Square(double a);
    };
}

#endif //SIMPLECALCULATOR_CALCULATORCORE_H
