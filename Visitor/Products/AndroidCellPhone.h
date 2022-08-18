//
//  AndroidCellPhone.h
//  Visitor
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <Foundation/Foundation.h>
#import "CellPhone.h"
NS_ASSUME_NONNULL_BEGIN

@interface AndroidCellPhone : NSObject <CellPhone>
@property (nonatomic, readonly) NSDictionary* characteristics;
- (instancetype)initWithScreen:(NSString *)resolution
                     osVersion:(NSString *)osVersion;
- (NSString *)getResolution;
- (NSString *)getOSVersion;
@end

NS_ASSUME_NONNULL_END
