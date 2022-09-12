//
//  MapSDK.h
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Route, NavigationSubsystem;

@interface MapSDKFacade : NSObject
-(instancetype)initWithNavigation:(NavigationSubsystem *)navigationSubsystem;
-(NSString *)timeToArrival;
-(void)startNavigationFrom:(NSNumber *)start tillPoint:(NSNumber *)finish;
@end

NS_ASSUME_NONNULL_END
