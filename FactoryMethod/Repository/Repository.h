//
//  Repository.h
//  FactoryMethod
//
//  Created by Anatol Uarmolovich on 23.01.22.
//

#import <Foundation/Foundation.h>
#import "DataSource.h"

NS_ASSUME_NONNULL_BEGIN

@interface Repository : NSObject
-(instancetype)initWith:(DataSource *)dataSource;
@end

NS_ASSUME_NONNULL_END
