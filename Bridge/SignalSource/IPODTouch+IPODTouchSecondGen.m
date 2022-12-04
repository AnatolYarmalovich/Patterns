//
//  IPODTouch+IPODTouchSecondGen.m
//  Bridge
//
//  Created by Anatol Uarmolovich on 12.09.22.
//

#import "IPODTouch+IPODTouchSecondGen.h"

@implementation IPODTouch (IPODTouchSecondGen)
-(void)changeAudioSignal:(id<AudioSignalReceiver>)receiver {
    self.audioSignalReceiver = receiver;
}
@end
