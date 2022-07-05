//
//  TabletBuilder.h
//  RegularBuilder
//
//  Created by Anatol Uarmolovich on 5.07.22.
//

#import <Foundation/Foundation.h>
#import "Tablet.h"

NS_ASSUME_NONNULL_BEGIN

@interface TabletBuilder : NSObject
-(TabletBuilder *)displaySize:(NSInteger)displaySize;
-(TabletBuilder *)osType:(OperationSystem)osType;
-(Tablet * _Nullable)build;
@end

NS_ASSUME_NONNULL_END
