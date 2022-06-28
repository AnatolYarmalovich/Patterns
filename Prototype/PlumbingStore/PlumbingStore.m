//
//  PlumbingStore.m
//  Prototype
//
//  Created by Anatol Uarmolovich on 28.06.22.
//

#import "PlumbingStore.h"
#import "WaterTap.h"


@interface PlumbingStore ()

@property NSMutableArray<WaterTap *>* orderOfCranesList;

@end

@implementation PlumbingStore

- (instancetype)init {
    self = [super init];

    return self;
}

-(WaterTap *)getNewCraneWith:(FaucetMechanism)mechanism color:(CraneColor)color serialNumber:(NSString *)serialNumber {
    WaterTap *newCrane = [[WaterTap alloc] initWaterTapWith:mechanism color:color serialNumber:serialNumber];
    [_orderOfCranesList addObject:newCrane];
    return newCrane;
}

-(WaterTap *)getSameLikePrevious {
    WaterTap *latestCrane = [_orderOfCranesList lastObject];
    if (latestCrane) {
        return latestCrane.copy;
    }
    return nil;
}

-(NSNumber *)getItemsInOrderCount {
    return [[NSNumber alloc] initWithInt: (int)_orderOfCranesList.count];
}


@end
