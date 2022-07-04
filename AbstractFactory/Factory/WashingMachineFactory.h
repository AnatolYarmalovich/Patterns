//
//  WashingMachineFactory.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#ifndef WashingMachineFactory_h
#define WashingMachineFactory_h
#import "WashingMachine.h"

@protocol WashingMachineFactory <NSObject>

-(id<WashingMachine>)makeWashingMachine;

@end

#endif /* WashingMachineFactory_h */
