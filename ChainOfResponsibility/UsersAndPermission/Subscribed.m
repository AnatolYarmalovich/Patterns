//
//  Subscribed.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import "Subscribed.h"
#import "PermissionLevel.h"

@implementation Subscribed

- (instancetype)init {
    self = [super init];
    if (self) {
        _permissionLevel = PermissionLevelSubscribed;
    }
    return self;
}

-(PermissionLevel)getPermissionLevel {
    return _permissionLevel;
}

@end
