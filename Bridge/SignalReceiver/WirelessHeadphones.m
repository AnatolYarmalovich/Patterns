//
//  WirelessHeadphones.m
//  Bridge
//
//  Created by Anatol Uarmolovich on 11.09.22.
//

#import "WirelessHeadphones.h"

@interface WirelessHeadphones()

@property (nonatomic) bool isDeviceConnected;

@property (nonatomic) int volumeLevel;

@end

@implementation WirelessHeadphones

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isDeviceConnected = false;
        _volumeLevel = 50;
    }
    return self;
}

- (void)increaseVolume:(int)point {
    if ((_volumeLevel + point) <= 100) {
        _volumeLevel += point;
    }
}

- (void)decreaseVolume:(int)point {
    if ((_volumeLevel - point) >= 0) {
        _volumeLevel -= point;
    }
}

- (void)connect {
    _isDeviceConnected = true;
}

- (void)disconnect {
    _isDeviceConnected = false;
}

- (BOOL)isConnected {
    return _isDeviceConnected;
}

- (int)currentVolume {
    return _volumeLevel;
}



@end
