//
//  MapSDK.m
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import "MapSDKFacade.h"
#import "Route.h"
#import "NavigationSubsystem.h"

@interface MapSDKFacade()

@property (nonatomic, assign) Route *route;
@property (nonatomic, assign) NavigationSubsystem *navigationSubsystem;
@end

@implementation MapSDKFacade

- (instancetype)initWithNavigation:(NavigationSubsystem *)navigationSubsystem {
    self = [super init];
    if (self) {
        _navigationSubsystem = navigationSubsystem;
    }
    return self;
}

- (NSString *)timeToArrival {
    if (_route) {
        NSString *timeToArrival = [[NSString alloc] initWithFormat: @"%@", [_navigationSubsystem timeToArrival]];
        return timeToArrival;
    }
    return nil;
}

- (void)startNavigationFrom:(NSNumber *)start tillPoint:(NSNumber *)finish {
    Route *newRoute = [[Route alloc] initWithStartPoint:start endPoint:finish];
    _route = newRoute;
    if (_route) {
        [_navigationSubsystem startNavigationWith: _route];
    }
}

@end
