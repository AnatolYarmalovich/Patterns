//
//  CellPhoneResolutionReader.h
//  Visitor
//
//  Created by Anatol Uarmolovich on 11.08.22.
//

#import <Foundation/Foundation.h>
#import "CharacteristicsVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CellPhoneResolutionReader : CharacteristicsVisitor

-(NSString *)visitIOSPhone:(iOSCellPhone *)phone;
-(NSString *)visitAndroidPhone:(AndroidCellPhone *)phone;

@end

NS_ASSUME_NONNULL_END
