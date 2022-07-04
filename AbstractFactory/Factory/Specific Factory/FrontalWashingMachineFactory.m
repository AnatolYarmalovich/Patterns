//
//  FrontalWashingMachineFactory.m
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import "FrontalWashingMachineFactory.h"
#import "FrontalLoadWashingMachine.h"

@implementation FrontalWashingMachineFactory

-(instancetype)init {
    self = [super init];
    return self;
}

- (id<FrontalWashingMachine>)makeWashingMachine {
    return [[FrontalLoadWashingMachine alloc] init];
}
@end
