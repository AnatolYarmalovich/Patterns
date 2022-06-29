//
//  Laptop.m
//  Builder
//
//  Created by Anatol Uarmolovich on 29.06.22.
//

#import "Laptop.h"
#import "LaptopBuilder.h"

@implementation Laptop

-(instancetype)initWithBuilder:(LaptopBuilder *)builder {
    self = [super init];
    if (self) {
        _displaySize = builder.displaySize;
        _isOSPreinstalled = builder.isOSPreinstalled;
        _cpuType = builder.cpuType;
    }
    return self;
}

+(instancetype)makeWithBuilder:(void (^)(LaptopBuilder * _Nonnull))builderBlock {
    LaptopBuilder* laptopBuilder = [LaptopBuilder new];
    builderBlock(laptopBuilder);
    return [[Laptop alloc]initWithBuilder: laptopBuilder];
}

-(instancetype)updateWithBuilder:(void (^)(LaptopBuilder * _Nonnull))builderBlock {
    LaptopBuilder* laptopBuilder = [self makeBuilder];
    builderBlock(laptopBuilder);
    return [[Laptop alloc]initWithBuilder: laptopBuilder];
}


- (LaptopBuilder *)makeBuilder {
    LaptopBuilder* builder = [LaptopBuilder new];
    builder.cpuType = _cpuType;
    builder.isOSPreinstalled = _isOSPreinstalled;
    builder.displaySize = _displaySize;
    return builder;
}


@end
