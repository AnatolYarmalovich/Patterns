//
//  CellPhoneResolutionReader.h
//  Visitor
//
//  Created by Anatol Uarmolovich on 11.08.22.
//

#import <Foundation/Foundation.h>
#import "CharacteristicsVisitor.h"
NS_ASSUME_NONNULL_BEGIN
@class iOSCellPhone, AndroidCellPhone;

@interface CellPhoneResolutionReader : NSObject <CharacteristicsVisitor>

@property (nonatomic) NSMutableArray<NSString *>* availableResolutions;
-(instancetype)init;
-(void)visitIOSPhone:(iOSCellPhone *)phone;
-(void)visitAndroidPhone:(AndroidCellPhone *)phone;

@end

NS_ASSUME_NONNULL_END
