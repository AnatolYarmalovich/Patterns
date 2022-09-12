//
//  IPODTouch.m
//  Bridge
//
//  Created by Anatol Uarmolovich on 11.09.22.
//

#import "IPODTouch.h"
#import "AudioSignalReceiver.h"


@implementation IPODTouch

- (instancetype)initWithAudioSignal:(id<AudioSignalReceiver>)receiver {
    self = [super init];
    if (self) {
        _audioSignalReceiver = receiver;
    }
    return self;
}

- (void)increaseVolume:(int)point {
    if (_audioSignalReceiver) {
        [_audioSignalReceiver increaseVolume:point];
    }
}

- (void)decreaseVolume:(int)point {
    if (_audioSignalReceiver) {
        [_audioSignalReceiver decreaseVolume:point];
    }
}

- (BOOL)isConnected {
    if (_audioSignalReceiver) {
        return [_audioSignalReceiver isConnected];
    }
    return false;
}

- (void)connect {
    if (_audioSignalReceiver && [_audioSignalReceiver isConnected]) {
        [_audioSignalReceiver connect];
    }
}

- (void)disconnect {
    if (_audioSignalReceiver && ![_audioSignalReceiver isConnected]) {
        [_audioSignalReceiver disconnect];
    }
}

-(int)currentVolume {
    if (_audioSignalReceiver) {
        return [_audioSignalReceiver currentVolume];
    }
    return 0;
}

@end
