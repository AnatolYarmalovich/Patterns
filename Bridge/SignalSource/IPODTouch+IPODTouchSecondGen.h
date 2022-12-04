//
//  IPODTouch+IPODTouchSecondGen.h
//  Bridge
//
//  Created by Anatol Uarmolovich on 12.09.22.
//

#import "IPODTouch.h"

NS_ASSUME_NONNULL_BEGIN

@interface IPODTouch (IPODTouchSecondGen)
-(void)changeAudioSignal:(id<AudioSignalReceiver>)receiver;
@end

NS_ASSUME_NONNULL_END
