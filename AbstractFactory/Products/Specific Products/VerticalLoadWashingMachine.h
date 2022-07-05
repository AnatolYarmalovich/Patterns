//
//  VerticalLoadWashingMachine.h
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import <Foundation/Foundation.h>
#import "WashingMachine.h"

NS_ASSUME_NONNULL_BEGIN

@interface VerticalLoadWashingMachine : NSObject <VerticalWashingMachine>

-(NSString *)loadingSide;

@end

NS_ASSUME_NONNULL_END
