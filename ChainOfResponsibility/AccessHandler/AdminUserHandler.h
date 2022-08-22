//
//  AdminUserHandler.h
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 22.08.22.
//

#import <Foundation/Foundation.h>
#import "BaseAccessHandler.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdminUserHandler : NSObject <BaseAccessHandler>
@property (nonatomic, strong, nullable) id<BaseAccessHandler> nextHandler;
@end

NS_ASSUME_NONNULL_END