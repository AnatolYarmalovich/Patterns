//
//  AudioSignalReceiver.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 12.09.22.
//

#ifndef AudioSignalReceiver_h
#define AudioSignalReceiver_h

#import <Foundation/Foundation.h>

@protocol AudioSignalReceiver

- (void)increaseVolume:(int)point;
- (void)decreaseVolume:(int)point;
- (BOOL)isConnected;
- (void)connect;
- (void)disconnect;
- (int)currentVolume;

@end

#endif /* AudioSignalReceiver_h */
