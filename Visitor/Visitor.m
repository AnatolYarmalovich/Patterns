//
//  Visitor.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <XCTest/XCTest.h>
#import "Products/AndroidCellPhone.h"
#import "Products/iOSCellPhone.h"
#import "CharacteristicsVisitors/CharacteristicsVisitor.h"
#import "CharacteristicsVisitors/CellPhoneOSVersionReader.h"
#import "CharacteristicsVisitors/CellPhoneResolutionReader.h"

@interface Visitor : XCTestCase

@end

@implementation Visitor

- (void)testExample {
    //Create array with cellPhones
    NSArray<id<CellPhone>>* cellPhones = @[
        [[AndroidCellPhone alloc] initWithScreen:@"2400*1080" osVersion: @"4.2"],
        [[AndroidCellPhone alloc] initWithScreen:@"1600*720" osVersion: @"4.2"],
        [[iOSCellPhone alloc] initWithScreen:@"2532*1170" osVersion: @"13.1"],
        [[iOSCellPhone alloc] initWithScreen:@"1792*828" osVersion: @"13.1"],
    ];

    CellPhoneResolutionReader *resolutionReader = [[CellPhoneResolutionReader alloc] init];
    CellPhoneOSVersionReader *osVersionReader = [[CellPhoneOSVersionReader alloc] init];

    for (id<CellPhone> phone in cellPhones) {
        [phone acceptCharacteristicsVisitor: resolutionReader];
        [phone acceptCharacteristicsVisitor: osVersionReader];
    }

    NSLog(@"%@", resolutionReader.availableResolutions);
    NSLog(@"%@", osVersionReader.availableVersions);

    XCTAssertTrue([osVersionReader.availableVersions count] == 4);
    XCTAssertTrue([resolutionReader.availableResolutions count] == 4);
}


@end
