//
//  VerticalWashingMachineFactory.h
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import <Foundation/Foundation.h>
#import "WashingMachineFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface VerticalWashingMachineFactory : NSObject <WashingMachineFactory>
-(id<VerticalWashingMachine>)makeWashingMachine;
@end

NS_ASSUME_NONNULL_END
