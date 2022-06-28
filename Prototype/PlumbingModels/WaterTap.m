//
//  WaterTap.m
//  Prototype
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import "WaterTap.h"

@implementation WaterTap

-(id)initWaterTapWith:(FaucetMechanism)mechanism
                color:(CraneColor)color
              serialNumber:(nonnull NSString *)serialNumber {
    
    self = [super init];

    if (self) {
        _color = color;
        _mechanism = mechanism;
        _serialNumber = serialNumber;
    }

    return self;
}

-(void)openWater {
    NSLog(@"Water opened");
}

-(void)closeWater {
    NSLog(@"Water closed");
}

-(id)copy {
    return [self copyWithZone:nil];
}

- (id)copyWithZone:(nullable NSZone *)zone {
    int counter = _serialNumber.intValue;
    counter = counter + 1;
    NSString *newSerialNumber = [[NSString alloc]initWithFormat:@"%d", counter];
    return [[WaterTap alloc] initWaterTapWith:_mechanism color:_color serialNumber: newSerialNumber];
}

@end

