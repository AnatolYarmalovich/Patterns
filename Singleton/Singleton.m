//
//  Singleton.m
//  Singleton
//
//  Created by Anatol Uarmolovich on 23.06.22.
//

#import <XCTest/XCTest.h>
#import "UserSetting/UserSetting.h"

@interface Singleton : XCTestCase

@end

@implementation Singleton

- (void)testNotMoreThenOneInstance {
    UserSetting *firstInstance = [UserSetting manager];
    UserSetting *secondInstance = [UserSetting manager];

    XCTAssertNotNil(firstInstance);

    // "==" compares the object reference; in Objective-C, whether they occupy the same memory address.
    XCTAssertTrue(firstInstance == secondInstance);
}

@end
