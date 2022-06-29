//
//  Laptop.h
//  Builder
//
//  Created by Anatol Uarmolovich on 29.06.22.
//

#import <Foundation/Foundation.h>

@class LaptopBuilder;

NS_ASSUME_NONNULL_BEGIN

typedef enum CPUType {
    ARM,
    Intel
} CPUType;

typedef int InchesScreenSize;

@interface Laptop : NSObject

@property (nonatomic, readonly) InchesScreenSize displaySize;
@property (nonatomic, readonly) BOOL isOSPreinstalled;
@property (nonatomic, readonly) CPUType cpuType;

+(instancetype)makeWithBuilder:(void (^)(LaptopBuilder *))builderBlock;
-(instancetype)updateWithBuilder:(void (^)(LaptopBuilder *))builderBlock;
-(instancetype)initWithBuilder:(LaptopBuilder *)builder;
@end

NS_ASSUME_NONNULL_END
