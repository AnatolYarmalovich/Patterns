//
//  AdminUserHandler.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 22.08.22.
//

#import "AdminUserHandler.h"
#import "BasicUser.h"
#import "PermissionLevel.h"

@implementation AdminUserHandler

- (instancetype)init {
    self = [super init];
    if (self) {
        _nextHandler = nil;
    }
    return self;
}

- (int)handle:(id<BasicUser> _Nonnull)user {
    if ([user getPermissionLevel] == PermissionLevelAdmin) {
        return (int)PermissionLevelAdmin;
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
