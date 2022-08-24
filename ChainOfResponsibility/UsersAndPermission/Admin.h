//
//  Admin.h
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 18.08.22.
//

#import <Foundation/Foundation.h>
#import "BasicUser.h"
NS_ASSUME_NONNULL_BEGIN

@interface Admin : NSObject <BasicUser>

-(instancetype)init;

@property (nonatomic, readonly) PermissionLevel permissionLevel;

@end

NS_ASSUME_NONNULL_END
