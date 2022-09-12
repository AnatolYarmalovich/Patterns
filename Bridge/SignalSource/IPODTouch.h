//
//  IPODTouch.h
//  Bridge
//
//  Created by Anatol Uarmolovich on 11.09.22.
//


#import <Foundation/Foundation.h>
#import "AudioSignalReceiver.h"
NS_ASSUME_NONNULL_BEGIN

@interface IPODTouch : NSObject

@property (nonatomic) id<AudioSignalReceiver> audioSignalReceiver;

- (instancetype)initWithAudioSignal: (id<AudioSignalReceiver>)receiver;

- (void)increaseVolume:(int)point;
- (void)decreaseVolume:(int)point;
- (BOOL)isConnected;
- (void)connect;
- (void)disconnect;

@end

NS_ASSUME_NONNULL_END
