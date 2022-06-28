//
//  PlumbingStore.h
//  Prototype
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import <Foundation/Foundation.h>
#import "FaucetMechanism.h"
#import "CraneColor.h"

NS_ASSUME_NONNULL_BEGIN

@class WaterTap;

@interface PlumbingStore : NSObject
@property NSMutableArray<WaterTap *>* waterCranes;

-(instancetype)init;
-(WaterTap *)getNewCraneWith:(FaucetMechanism)mechanism color:(CraneColor)color serialNumber: (NSString *)serialNumber;
-(WaterTap *)getSameLikePrevious;
-(NSNumber *)getItemsInOrderCount;

@end

NS_ASSUME_NONNULL_END
