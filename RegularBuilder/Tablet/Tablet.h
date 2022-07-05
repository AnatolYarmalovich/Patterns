//
//  Tablet.h
//  RegularBuilder
//
//  Created by Anatol Uarmolovich on 5.07.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, OperationSystem) {
    IPadOS = 0,
    WindowsMobile = 1,
    AndroidOS = 2,
    None = 3
};

@class TabletBuilder;

@interface Tablet : NSObject

@property (nonatomic, readonly, copy) NSNumber * _Nullable displaySize;
@property (nonatomic, readonly, copy) NSNumber * _Nullable osCode;

-(instancetype _Nullable)initWith:(NSInteger) displaySize
                           osCode:(OperationSystem)osCode;

+(TabletBuilder* ) builder;

@end

NS_ASSUME_NONNULL_END
