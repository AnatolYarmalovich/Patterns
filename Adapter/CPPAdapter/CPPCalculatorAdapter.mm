//
//  CPPCalculatorAdapter.m
//  Adapter
//
//  Created by Anatol Uarmolovich on 22.08.22.
//

#import "CPPCalculatorAdapter.h"
#import "CalculatorCore.h"

struct CalculatorImpl {
    SimpleCalculator::CalculatorCore wrapped;
};

@implementation CPPCalculatorAdapter

- (instancetype)init {
    self = [super init];
    if (self) {
        impl = new CalculatorImpl;
    }
    return self;
}

- (double)divide:(double)a by:(double)b {

    double result = impl->wrapped.Divide(a, b);
    return result;
}

- (double)multiply:(double)a by:(double)b {
    double result = impl->wrapped.Multiply(a, b);
    return result;
}

- (double)square:(double)a {
    double result = impl->wrapped.Square(a);
    return result;
}

-(double)sum:(double)a by:(double)b {
    double result = impl->wrapped.Sum(a, b);
    return result;
}

- (double)subtraction:(double)a by:(double)b {
    double result = impl->wrapped.Subtraction(a, b);
    return result ;
}

-(void)dealloc {
    delete impl;
}

@end
