//
//  CreateNetworkDataSource.m
//  FactoryMethod
//
//  Created by Anatol Uarmolovich on 23.01.22.
//

#import "CreateNetworkDataSource.h"

@implementation CreateNetworkDataSource
-(DataSource *)createDataSource {
    NetworkDataSource* network = [[NetworkDataSource alloc] init];
    return network;
}
@end
