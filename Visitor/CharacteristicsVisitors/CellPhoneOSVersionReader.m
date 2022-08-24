//
//  CellPhoneOSVersionReader.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 13.08.22.
//

#import "CellPhoneOSVersionReader.h"
#import "iOSCellPhone.h"
#import "AndroidCellPhone.h"

@implementation CellPhoneOSVersionReader

- (instancetype)init {
    self = [super init];
    if (self) {
        _availableVersions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)visitIOSPhone:(iOSCellPhone *)phone {
    [_availableVersions addObject:[phone getOSVersion]];
}

-(void)visitAndroidPhone:(AndroidCellPhone *)phone {
    [_availableVersions addObject:[phone getOSVersion]];
}

@end
