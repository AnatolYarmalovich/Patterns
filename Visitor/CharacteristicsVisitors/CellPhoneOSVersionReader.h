//
//  CellPhoneOSVersionReader.h
//  Visitor
//
//  Created by Anatol Uarmolovich on 13.08.22.
//

#import "CharacteristicsVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CellPhoneOSVersionReader : CharacteristicsVisitor

-(NSString *)visitIOSPhone:(iOSCellPhone *)phone;
-(NSString *)visitAndroidPhone:(AndroidCellPhone *)phone;

@end

NS_ASSUME_NONNULL_END
