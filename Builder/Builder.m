//
//  Builder.m
//  Builder
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import <XCTest/XCTest.h>
#import "Laptop/Laptop.h"
#import "LaptopBuilder/LaptopBuilder.h"

@interface Builder : XCTestCase

@end

@implementation Builder

-(void)testLaptopBuilder {
    Laptop *macBookPro13 = [Laptop makeWithBuilder:^(LaptopBuilder* builder) {
        builder.displaySize = 13;
        builder.isOSPreinstalled = true;
        builder.cpuType = ARM;
    }];

    XCTAssertTrue(macBookPro13.displaySize == 13 && macBookPro13.isOSPreinstalled == true && macBookPro13.cpuType == ARM);

    Laptop *macBookPro13WithoutOS = [macBookPro13 updateWithBuilder:^(LaptopBuilder * builder) {
        builder.isOSPreinstalled = false;
    }];

    XCTAssertTrue(macBookPro13WithoutOS.isOSPreinstalled == false);
}

@end
