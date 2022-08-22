//
//  SubscribedUserHandler.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 19.08.22.
//

#import "SubscribedUserHandler.h"
#import "BasicUser.h"
#import "PermissionLevel.h"

@implementation SubscribedUserHandler

- (instancetype)init {
    self = [super init];
    if (self) {
        _nextHandler = nil;
    }
    return self;
}

- (int)handle:(id<BasicUser> _Nonnull)user {
    if ([user getPermissionLevel] == PermissionLevelSubscribed) {
        return (int)PermissionLevelSubscribed;
    } else {
        if (_nextHandler) {
            return [_nextHandler handle:user];
        }
    }
    return (int)PermissionLevelUnknown;
}

- (id<BaseAccessHandler>)setNext:(id<BaseAccessHandler>)handler {
    _nextHandler = handler;
    return self;
}

@end
