//
//  Repository.m
//  FactoryMethod
//
//  Created by Anatol Uarmolovich on 23.01.22.
//

#import "Repository.h"

@implementation Repository
-(instancetype)initWith:(DataSource *)dataSource {
    [dataSource receiveData];
    return self;
}
@end
