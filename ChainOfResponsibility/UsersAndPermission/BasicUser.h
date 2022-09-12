//
//  BasicUser.h
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import <Foundation/Foundation.h>
#import "PermissionLevel.h"
NS_ASSUME_NONNULL_BEGIN

@protocol BasicUser

@required
-(PermissionLevel)getPermissionLevel;

@end

NS_ASSUME_NONNULL_END
