//
//  AbstractFactory.m
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import <XCTest/XCTest.h>
#import "Warehouse/Warehouse.h"
#import "Factory/Specific Factory/VerticalWashingMachineFactory.h"
#import "Factory/Specific Factory/FrontalWashingMachineFactory.h"

@interface AbstractFactory : XCTestCase

@end

@implementation AbstractFactory

- (void)testExample {


    Warehouse *warehouse = [[Warehouse alloc] init];

    VerticalWashingMachineFactory *verticalWMFactory = [VerticalWashingMachineFactory new];
    FrontalWashingMachineFactory *frontalWMFactory = [FrontalWashingMachineFactory new];

    id<WashingMachine> verticalLoadingMachine = [warehouse createWashingMachineWith:verticalWMFactory];

    XCTAssertTrue([[verticalLoadingMachine loadingSide] isEqual:@"top"]);

    id<WashingMachine> frontalLoadingMachine = [warehouse createWashingMachineWith:frontalWMFactory];

    XCTAssertTrue([[frontalLoadingMachine loadingSide] isEqual:@"front"]);
}

@end
