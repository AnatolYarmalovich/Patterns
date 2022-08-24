//
//  CPPCalculatorAdapter.h
//  Adapter
//
//  Created by Anatol Uarmolovich on 22.08.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

struct CalculatorImpl;

@interface CPPCalculatorAdapter : NSObject {
@private struct CalculatorImpl* impl;
}

-(double)divide:(double)a by:(double)b;
-(double)sum:(double)a by:(double)b;
-(double)multiply:(double)a by:(double)b;
-(double)subtraction:(double)a by:(double)b;
-(double)square:(double)a;

@end

NS_ASSUME_NONNULL_END
