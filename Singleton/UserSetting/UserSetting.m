//
//  UserSettingManager.m
//  Singleton
//
//  Created by Anatol Uarmolovich on 23.06.22.
//

#import "UserSetting.h"

@implementation UserSetting

static UserSetting *sharedManager = nil;

+ (instancetype)manager {
    @synchronized (self) {
        if (sharedManager == nil) {
            sharedManager = [[self alloc] init];
        }
    }
    return sharedManager;
}

-(void)readSettings {
    NSLog(@"Read some settings");
}

-(void)writeSettings {
    NSLog(@"Write some settings");
}
@end
