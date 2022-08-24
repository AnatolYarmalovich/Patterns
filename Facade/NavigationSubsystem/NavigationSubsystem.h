//
//  NavigationSubsystem.h
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import <Foundation/Foundation.h>
@class Route;

NS_ASSUME_NONNULL_BEGIN

@interface NavigationSubsystem : NSObject

-(instancetype)init;
-(void)startNavigationWith:(Route *)route;
-(NSNumber *)timeToArrival;
@end

NS_ASSUME_NONNULL_END
