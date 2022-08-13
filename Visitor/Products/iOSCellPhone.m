//
//  iOSCellPhone.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import "iOSCellPhone.h"
#import "CharacteristicsVisitor.h"

@implementation iOSCellPhone

- (instancetype)initWithScreen:(NSString *)resolution
                     osVersion:(NSString *)osVersion {
    self = [super init];
    if (self) {
        _characteristics = @{@"resolution": resolution,
                             @"os_version": osVersion
        };
    }
    return self;
}

- (void)acceptCharacteristicsReader:(CharacteristicsVisitor *)reader {
    [reader visitIOSPhone: self];
}

-(NSString *)getResolution {
    if (_characteristics) {
        return _characteristics[@"resolution"];
    }
    return nil;
}

-(NSString *)getOSVersion {
    if (_characteristics) {
        return _characteristics[@"os_version"];
    }
    return nil;
}

@end
