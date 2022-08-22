//
//  UnsubscribedUserHandler.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 19.08.22.
//

#import "UnsubscribedUserHandler.h"
#import "BasicUser.h"
#import "PermissionLevel.h"

@implementation UnsubscribedUserHandler

- (instancetype)init {
    self = [super init];
    if (self) {
        _nextHandler = nil;
    }
    return self;
}

- (int)handle:(id<BasicUser> _Nonnull)user {
    if ([user getPermissionLevel] == PermissionLevelUnsubscribed) {
        return (int)PermissionLevelUnsubscribed;
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
