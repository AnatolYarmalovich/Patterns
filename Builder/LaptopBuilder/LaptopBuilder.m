//
//  LaptopBuilder.m
//  Builder
//
//  Created by Anatol Uarmolovich on 29.06.22.
//

#import "LaptopBuilder.h"

@implementation LaptopBuilder

//Default state for new object
- (instancetype)init {
    self = [super init];
    if (self) {
        _cpuType = Intel;
        _displaySize = 13;
        _isOSPreinstalled = false;
    }
    return self;
}

@end
