//
//  RouteSubsystem.m
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import "Route.h"

@interface Route()

@property (nonatomic, assign) NSNumber * startPoint;
@property (nonatomic, assign) NSNumber * endPoint;

@end

@implementation Route

- (instancetype)initWithStartPoint:(NSNumber *)startPoint endPoint:(NSNumber *)endPoint {
    self = [super init];
    if (self) {
        _startPoint = startPoint;
        _endPoint = endPoint;
    }
    return self;
}

- (NSNumber *)distance {
    int distance = _startPoint.intValue - _endPoint.intValue;
    NSNumber *result = [[NSNumber alloc] initWithInt:distance];
    return result;
}
@end
