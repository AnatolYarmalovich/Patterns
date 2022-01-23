//
//  FactoryMethod.m
//  FactoryMethod
//
//  Created by Anatol Uarmolovich on 23.01.22.
//

#import <XCTest/XCTest.h>
#import "SourceFactory/SourceFactory.h"
#import "SourceFactory/CreateNetwork/CreateNetworkDataSource.h"
#import "SourceFactory/CreatePersistent/CreateLocalDataSource.h"
#import "Repository/Repository.h"
//The main

@interface FactoryMethod : XCTestCase

@end

@implementation FactoryMethod

- (void)testFactoryMethodLocal {
    CreateLocalDataSource *local = [[CreateLocalDataSource alloc] init];
    DataSource *localSource = [local createDataSource];
    BOOL isTrue = [[localSource receiveData]  isEqual: @"CoreData"];
    Repository *repository = [[Repository alloc] initWith: localSource];
    XCTAssertNotNil(repository);
    XCTAssertTrue(isTrue);
}

-(void)testFactoryMethodNetwork {
    CreateNetworkDataSource *local = [[CreateNetworkDataSource alloc] init];
    DataSource *networkSource = [local createDataSource];
    BOOL isTrue = [[networkSource receiveData]  isEqual: @"Network"];
    Repository *repository = [[Repository alloc] initWith: networkSource];
    XCTAssertNotNil(repository);
    XCTAssertTrue(isTrue);
}

@end


