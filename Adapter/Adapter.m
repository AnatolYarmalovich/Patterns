//
//  Adapter.m
//  Adapter
//
//  Created by Anatol Uarmolovich on 22.08.22.
//

#import <XCTest/XCTest.h>
#import "CPPAdapter/CPPCalculatorAdapter.h"
@interface Adapter : XCTestCase

@end

@implementation Adapter

- (void)testAdapter {
    CPPCalculatorAdapter *adaptedCalculator = [[CPPCalculatorAdapter alloc] init];
    double divideResult = [adaptedCalculator divide:4 by:2];
    XCTAssertTrue(2 == divideResult);

    double sumResult = [adaptedCalculator sum:128 by:128];
    XCTAssertTrue(256 == sumResult);

    double multiplyResult = [adaptedCalculator multiply:2 by:2];
    XCTAssertTrue(4 == multiplyResult);

    double subtractionResult = [adaptedCalculator subtraction:256 by:23];
    XCTAssertEqualWithAccuracy(subtractionResult, 233, 0.0000001);
}

@end
