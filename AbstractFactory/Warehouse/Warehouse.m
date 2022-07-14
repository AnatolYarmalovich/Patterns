//
//  Warehouse.m
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import "Warehouse.h"

@implementation Warehouse

- (id<WashingMachine>)createWashingMachineWith:(id<WashingMachineFactory>)factory {
    return [factory makeWashingMachine];
}

@end
