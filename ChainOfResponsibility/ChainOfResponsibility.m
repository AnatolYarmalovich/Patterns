//
//  ChainOfResponsibility.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import <XCTest/XCTest.h>
#import "AccessHandler/SubscribedUserHandler.h"
#import "AccessHandler/UnsubscribedUserHandler.h"
#import "AccessHandler/AdminUserHandler.h"
#import "UsersAndPermission/PermissionLevel.h"
#import "UsersAndPermission/Unsubscribed.h"
#import "UsersAndPermission/Subscribed.h"
#import "UsersAndPermission/Admin.h"


@interface ChainOfResponsibility : XCTestCase

@end

@implementation ChainOfResponsibility

- (void)testChainOfResponsibility {
    Subscribed *subscribedUser = [[Subscribed alloc] init];
    Admin *adminUser = [[Admin alloc] init];
    Unsubscribed *unsubscribedUser = [[Unsubscribed alloc] init];

    SubscribedUserHandler *subscribedHandler = [[SubscribedUserHandler alloc] init];
    UnsubscribedUserHandler *unsubscribedHandler = [[UnsubscribedUserHandler alloc] init];
    AdminUserHandler *adminHandler = [[AdminUserHandler alloc] init];

    [subscribedHandler setNext: [unsubscribedHandler setNext: adminHandler]];

    int unsubscribedResult = [subscribedHandler handle: unsubscribedUser];
    NSLog(@"%d", unsubscribedResult);
    XCTAssertTrue(0 == unsubscribedResult);

    int subscribedResult = [subscribedHandler handle: subscribedUser];
    NSLog(@"%d", subscribedResult);
    XCTAssertTrue(1 == subscribedResult);

    int adminResult = [subscribedHandler handle: adminUser];
    NSLog(@"%d", adminResult);
    XCTAssertTrue(2 == adminResult);

    //Here used chain without 'Subscribed user' handler's.
    int noSubscribedResult = [unsubscribedHandler handle: subscribedUser];
    NSLog(@"%d", noSubscribedResult);
    XCTAssertTrue(3 == noSubscribedResult);

}


@end
