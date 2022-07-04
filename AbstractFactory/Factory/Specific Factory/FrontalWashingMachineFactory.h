//
//  FrontalWashingMachineFactory.h
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import <Foundation/Foundation.h>
#import "WashingMachineFactory.h"
NS_ASSUME_NONNULL_BEGIN

@interface FrontalWashingMachineFactory : NSObject<WashingMachineFactory>
-(instancetype)init;
-(id<FrontalWashingMachine>)makeWashingMachine;
@end

NS_ASSUME_NONNULL_END
