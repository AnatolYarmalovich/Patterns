//
//  NavigatorContext.m
//  Strategy
//
//  Created by Anatol Yarmalovich on 04/12/2022.
//

#import "NavigatorContext.h"

@interface NavigatorContext()
@property (nullable) id<TransportStrategy> transportStrategy;
@end

@implementation NavigatorContext

- (MovementType)identifyBestMovementType {
    if (_transportStrategy == nil) {
        return Unknown;
    }

    return [_transportStrategy recognizeBestMovementType];
}

- (void)setStrategy:(id<TransportStrategy>)strategy {
    _transportStrategy = strategy;
}
@end
