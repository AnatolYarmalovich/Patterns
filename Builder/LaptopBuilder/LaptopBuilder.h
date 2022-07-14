//
//  LaptopBuilder.h
//  Builder
//
//  Created by Anatol Uarmolovich on 29.06.22.
//

#import <Foundation/Foundation.h>
#import "Laptop.h"

NS_ASSUME_NONNULL_BEGIN

@interface LaptopBuilder : NSObject

@property (nonatomic, assign) InchesScreenSize displaySize;
@property (nonatomic, assign) BOOL isOSPreinstalled;
@property (nonatomic, assign) CPUType cpuType;

-(instancetype)init;
@end

NS_ASSUME_NONNULL_END
