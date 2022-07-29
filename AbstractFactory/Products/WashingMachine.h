//
//  WashingMachine.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#ifndef WashingMachine_h
#define WashingMachine_h

#import <Foundation/Foundation.h>

@protocol WashingMachine <NSObject>

-(NSString *)loadingSide;

@end

@protocol VerticalWashingMachine <NSObject, WashingMachine>
@end

@protocol FrontalWashingMachine <NSObject, WashingMachine>
@end

#endif /* WashingMachine_h */
