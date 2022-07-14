//
//  Tablet.m
//  RegularBuilder
//
//  Created by Anatol Uarmolovich on 5.07.22.
//

#import "Tablet.h"
#import "TabletBuilder.h"

@implementation Tablet

-(instancetype)initWith:(NSInteger)displaySize osCode:(OperationSystem)osCode {
    
    self = [super init];
    
    if (self) {
        _osCode = [[NSNumber alloc] initWithInteger:osCode];
        _displaySize = [[NSNumber alloc] initWithInteger:displaySize];
    }
    
    return self;
}

+ (TabletBuilder *)builder {
    return [TabletBuilder new];
}
@end
