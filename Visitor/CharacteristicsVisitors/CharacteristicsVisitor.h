//
//  CharacteristicsVisitor.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <Foundation/Foundation.h>
#import "CellPhone.h"
@class iOSCellPhone, AndroidCellPhone;

#ifndef CharacteristicReader_h
#define CharacteristicReader_h

@interface CharacteristicsVisitor : NSObject
-(NSString *)visitIOSPhone:(iOSCellPhone *)phone;
-(NSString *)visitAndroidPhone:(AndroidCellPhone *)phone;
@end

#endif /* CharacteristicReader_h */
