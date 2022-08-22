//
//  AndroidCellPhone.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import "AndroidCellPhone.h"
#import "CharacteristicsVisitor.h"

@implementation AndroidCellPhone

- (instancetype)initWithScreen:(NSString *)resolution
                     osVersion:(NSString *)osVersion {
    self = [super init];
    if (self) {
        _characteristics = @{
            @"resolution": resolution,
            @"os_version": osVersion
        };
    }
    return self;
}

- (void)acceptCharacteristicsVisitor:(id<CharacteristicsVisitor>)reader {
    [reader visitAndroidPhone: self];
}

-(NSString *)getResolution {
    if (_characteristics) {
        NSString* resolution = _characteristics[@"resolution"];
        return resolution;
    }
    return nil;
}

-(NSString *)getOSVersion {
    if (_characteristics) {
        NSString* resolution = _characteristics[@"os_version"];
        return resolution;
    }
    return nil;
}

@end
