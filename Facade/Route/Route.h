//
//  RouteSubsystem.h
//  Facade
//
//  Created by Anatol Uarmolovich on 27.07.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Route : NSObject

-(instancetype)initWithStartPoint:(NSNumber *)startPoint endPoint:(NSNumber *)endPoint;
-(NSNumber *)distance;

@end

NS_ASSUME_NONNULL_END
