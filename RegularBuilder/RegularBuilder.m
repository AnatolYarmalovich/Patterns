//
//  RegularBuilder.m
//  RegularBuilder
//
//  Created by Anatol Uarmolovich on 5.07.22.
//

#import <XCTest/XCTest.h>
#import "Tablet/Tablet.h"
#import "TabletBuilder/TabletBuilder.h"

@interface RegularBuilder : XCTestCase

@end

@implementation RegularBuilder

- (void)testRegularTabletBuilder {

    Tablet* iPad = [[[[[TabletBuilder alloc] init] displaySize:15] osType:IPadOS] build];

    XCTAssertTrue([iPad.displaySize isEqual:@15]);

    XCTAssertTrue(iPad.osCode.intValue == 0);

    OperationSystem os = [iPad.osCode integerValue];
    XCTAssertTrue(os == IPadOS);
}

@end
