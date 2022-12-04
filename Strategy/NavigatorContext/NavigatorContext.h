//
//  NavigatorContext.h
//  Strategy
//
//  Created by Anatol Yarmalovich on 04/12/2022.
//

#import <Foundation/Foundation.h>
#import "TransportStrategy.h"
#import "TerrainType.h"

NS_ASSUME_NONNULL_BEGIN

@interface NavigatorContext : NSObject
-(MovementType)identifyBestMovementType;
-(void)setStrategy:(id<TransportStrategy>)strategy;
@end

NS_ASSUME_NONNULL_END
