//
//  CreateLocalDataSource.m
//  FactoryMethod
//
//  Created by Anatol Uarmolovich on 23.01.22.
//

#import "CreateLocalDataSource.h"

@implementation CreateLocalDataSource
-(DataSource *)createDataSource {
    PersistentDataSource* local = [[PersistentDataSource alloc] init];
    return local;
}
@end
