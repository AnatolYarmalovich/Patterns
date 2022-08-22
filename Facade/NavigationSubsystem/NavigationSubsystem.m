//
//  NavigationSubsystem.m
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import "NavigationSubsystem.h"
#import "Route.h"

@interface NavigationSubsystem()
@property (nonatomic, assign) Route * route;
@end

@implementation NavigationSubsystem

-(instancetype)init {
    self = [super init];
    return self;
}

-(void)startNavigationWith:(Route *)route {
    _route = route;
}

-(NSNumber *)timeToArrival {
    if (_route) {
        double timeToArrival = [[_route distance] intValue] / 60;
        NSNumber *result = [[NSNumber alloc] initWithDouble:timeToArrival];
        return result;
    }
    return nil;
}

@end
