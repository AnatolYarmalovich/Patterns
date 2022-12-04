//
//  TransportStrategy.h
//  Patterns
//
//  Created by Anatol Yarmalovich on 04/12/2022.
//

#import <Foundation/Foundation.h>
#import "MovementType.h"

@protocol TransportStrategy

-(MovementType)recognizeBestMovementType;

@end
