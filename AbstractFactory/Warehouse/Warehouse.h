//
//  Warehouse.h
//  AbstractFactory
//
//  Created by Anatol Uarmolovich on 4.07.22.
//

#import <Foundation/Foundation.h>
#import "WashingMachineFactory.h"

NS_ASSUME_NONNULL_BEGIN

// Client code
@interface Warehouse : NSObject
-(id<WashingMachine>)createWashingMachineWith:(id<WashingMachineFactory>)factory;
@end

NS_ASSUME_NONNULL_END
