//
//  Unsubscribed.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import "Unsubscribed.h"

@implementation Unsubscribed

- (instancetype)init {
    self = [super init];
    if (self) {
        _permissionLevel = PermissionLevelUnsubscribed;
    }
    return self;
}

- (PermissionLevel)getPermissionLevel {
    return _permissionLevel;
}

@end
