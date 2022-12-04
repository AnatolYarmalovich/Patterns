//
//  PermissionLevel.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#ifndef PermissionLevel_h
#define PermissionLevel_h

typedef NS_ENUM(NSUInteger, PermissionLevel) {
    PermissionLevelUnsubscribed = 0,
    PermissionLevelSubscribed = 1,
    PermissionLevelAdmin = 2,
    PermissionLevelUnknown = 3
};

#endif /* PermissionLevel_h */
