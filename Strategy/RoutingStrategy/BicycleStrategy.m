//
//  Bicycle.m
//  Strategy
//
//  Created by Anatol Yarmalovich on 04/12/2022.
//

#import "BicycleStrategy.h"

@implementation BicycleStrategy
-(MovementType)recognizeBestMovementType {
    return Bicycle;
}
@end
