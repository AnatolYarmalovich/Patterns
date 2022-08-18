//
//  CellPhoneResolutionReader.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 11.08.22.
//

#import "CellPhoneResolutionReader.h"
#import "iOSCellPhone.h"
#import "AndroidCellPhone.h"

@implementation CellPhoneResolutionReader

- (instancetype)init {
    self = [super init];
    if (self) {
        _availableResolutions = [NSMutableArray array];
    }
    return self;
}

-(void)visitIOSPhone:(iOSCellPhone *)phone {
    [_availableResolutions addObject:[phone getResolution]];
}

-(void)visitAndroidPhone:(AndroidCellPhone *)phone {
    [_availableResolutions addObject:[phone getResolution]];
}

@end
