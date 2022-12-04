//
//  Bridge.m
//  Bridge
//
//  Created by Anatol Uarmolovich on 24.08.22.
//

#import <XCTest/XCTest.h>
#import "SignalSource/IPODTouch.h"
#import "SignalSource/IPODTouch+IPODTouchSecondGen.h"
#import "SignalReceiver/WirelessSpeaker.h"
#import "SignalReceiver/WirelessHeadphones.h"

@interface Bridge : XCTestCase

@end

@implementation Bridge

- (void)bridgeTest {

    WirelessSpeaker *speakers = [[WirelessSpeaker alloc] init];

    IPODTouch *iPod = [[IPODTouch alloc] initWithAudioSignal:speakers];
    [iPod increaseVolume: 10];
    XCTAssertTrue([speakers currentVolume] == 60);

    WirelessHeadphones *headphones = [[WirelessHeadphones alloc] init];

    IPODTouch *iPod2Gen = [[IPODTouch alloc] initWithAudioSignal:speakers];
    [iPod2Gen decreaseVolume: 20];

    XCTAssertTrue([speakers currentVolume] == 40);

    [iPod2Gen changeAudioSignal:headphones];
    [iPod2Gen decreaseVolume:20];
    
    XCTAssertTrue([headphones currentVolume] == 30);
}

@end
