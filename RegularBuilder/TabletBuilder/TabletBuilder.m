//
//  TabletBuilder.m
//  RegularBuilder
//
//  Created by Anatol Uarmolovich on 5.07.22.
//

#import "TabletBuilder.h"

@interface TabletBuilder ()
@property (nonatomic, copy) NSNumber * displaySize;
@property (nonatomic, copy) NSNumber * osCode;
@end

@implementation TabletBuilder

-(TabletBuilder *)displaySize:(NSInteger)displaySize {
    _displaySize = [[NSNumber alloc] initWithInteger:displaySize];
    return self;
}

- (TabletBuilder *)osType:(OperationSystem)osType {
    _osCode = [[NSNumber alloc] initWithInteger:osType];
    return self;
}

-(Tablet * _Nullable)build {
    OperationSystem osCode = _osCode.integerValue;
    NSInteger displaySize = _displaySize.integerValue;
    return [[Tablet alloc] initWith: displaySize osCode:osCode];
}

@end
