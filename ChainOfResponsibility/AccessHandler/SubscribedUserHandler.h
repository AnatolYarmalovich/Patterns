//
//  SubscribedUserHandler.h
//  ChainOfResponsibility
//
//  Created by Anatol Uarmolovich on 19.08.22.
//

#import <Foundation/Foundation.h>
#import "BaseAccessHandler.h"
NS_ASSUME_NONNULL_BEGIN


@interface SubscribedUserHandler : NSObject <BaseAccessHandler>
@property (nonatomic, strong, nullable) id<BaseAccessHandler> nextHandler;
@end

NS_ASSUME_NONNULL_END
