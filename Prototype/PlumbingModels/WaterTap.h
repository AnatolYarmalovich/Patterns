//
//  WaterTap.h
//  Prototype
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import <Foundation/Foundation.h>
#import "FaucetMechanism.h"
#import "CraneColor.h"


NS_ASSUME_NONNULL_BEGIN

@interface WaterTap : NSObject <NSCopying>

@property(readonly) CraneColor color;
@property(readonly) FaucetMechanism mechanism;
@property(readonly, nonatomic) NSString *serialNumber;

-(id)initWaterTapWith:(FaucetMechanism)mechanism
                color:(CraneColor)color
         serialNumber:(NSString *)serialNumber;

// Some methods
-(void)openWater;
-(void)closeWater;

//Make a copy of object with new serial number
-(id)copy;

@end

NS_ASSUME_NONNULL_END
