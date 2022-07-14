//
//  VerticalWashingMachineFactory.m
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import "VerticalWashingMachineFactory.h"
#import "VerticalLoadWashingMachine.h"

@implementation VerticalWashingMachineFactory
- (id<VerticalWashingMachine>)makeWashingMachine {
    return [[VerticalLoadWashingMachine alloc] init];
}

@end
