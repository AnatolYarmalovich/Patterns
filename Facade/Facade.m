//
//  Facade.m
//  Facade
//
//  Created by Anatol Uarmolovich on 26.07.22.
//

#import <XCTest/XCTest.h>
#import "MapSDK/MapSDKFacade.h"
#import "Route/Route.h"
#import "NavigationSubsystem/NavigationSubsystem.h"

@interface Facade : XCTestCase

@end

@implementation Facade

- (void)testFacade {
    //Init all instances here
    /*
     Some subsystem objects may already be created in client code.
     In this case, it may make sense to initialize the Facade with these objects,
     instead of letting the Facade create new instances.
     */

    NavigationSubsystem *navSubsystem = [[NavigationSubsystem alloc] init];
    MapSDKFacade *mapSDK = [[MapSDKFacade alloc] initWithNavigation:navSubsystem];

    //Start and end point of route
    NSNumber *startPoint = [[NSNumber alloc] initWithInt:600];
    NSNumber *endPoint = [[NSNumber alloc] initWithInt:60];

    //Start our "navigation" here
    [mapSDK startNavigationFrom:startPoint tillPoint:endPoint];
    NSString *timeToArrival = [mapSDK timeToArrival];
    
    XCTAssertTrue([timeToArrival isEqual:@"9"]);
}


@end
