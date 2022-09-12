//
//  BaseAccessHandler.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 19.08.22.
//

#ifndef BaseAccessHandler_h
#define BaseAccessHandler_h
@protocol BasicUser;
@protocol BaseAccessHandler

-(int)handle:(nonnull id<BasicUser>) user;
-(nonnull id<BaseAccessHandler>)setNext:(nonnull id<BaseAccessHandler> ) handler;

@end

#endif /* BaseAccessHandler_h */
