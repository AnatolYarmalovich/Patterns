//
//  Prototype.m
//  Prototype
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import <XCTest/XCTest.h>
#import "PlumbingStore/PlumbingStore.h"
#import "PlumbingModels/WaterTap.h"

@interface Prototype : XCTestCase

@end

@implementation Prototype

-(void)prototypePatternTest {
    //Create new store
    PlumbingStore *store = [[PlumbingStore alloc] init];


    WaterTap* newCrane = [[WaterTap alloc] initWaterTapWith: Ball color: Black serialNumber:@"1"];
    WaterTap* sameCrane = [store getSameLikePrevious];

    XCTAssertTrue([[store getItemsInOrderCount] intValue] > 1);
    XCTAssertFalse([newCrane serialNumber] == [sameCrane serialNumber]);
    XCTAssertTrue([newCrane color] == [sameCrane color]);
    XCTAssertTrue([newCrane mechanism] == [sameCrane mechanism]);
}

@end
