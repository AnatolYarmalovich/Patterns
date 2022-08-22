//
//  Admin.m
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import "Admin.h"
#import "PermissionLevel.h"


@implementation Admin

- (instancetype)init {
    self = [super init];
    if (self) {
        _permissionLevel = PermissionLevelAdmin;
    }
    return self;
}

-(PermissionLevel)getPermissionLevel {
    return _permissionLevel;
}


@end
