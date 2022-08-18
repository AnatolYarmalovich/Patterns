//
//  CellPhoneOSVersionReader.h
//  Visitor
//
//  Created by Anatol Uarmolovich on 13.08.22.
//

#import <Foundation/Foundation.h>
#import "CharacteristicsVisitor.h"
NS_ASSUME_NONNULL_BEGIN
@class iOSCellPhone, AndroidCellPhone;

@interface CellPhoneOSVersionReader : NSObject <CharacteristicsVisitor>

@property (nonatomic) NSMutableArray<NSString *>* availableVersions;
-(instancetype)init;
-(void)visitIOSPhone:(iOSCellPhone *)phone;
-(void)visitAndroidPhone:(AndroidCellPhone *)phone;

@end

NS_ASSUME_NONNULL_END
