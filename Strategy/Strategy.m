//
//  Strategy.m
//  Strategy
//
//  Created by Anatol Yarmalovich on 04/12/2022.
//

#import <XCTest/XCTest.h>
#import "NavigatorContext/NavigatorContext.h"
#import "RoutingStrategy/PedestrianStrategy.h"
#import "RoutingStrategy/VehicleStrategy.h"
#import "RoutingStrategy/BicycleStrategy.h"

@interface Strategy : XCTestCase

@end

@implementation Strategy

- (void)testStrategyIfRock {
    NavigatorContext *context = [[NavigatorContext alloc] init];
    TerrainType terrainType = Rocks;

    if (terrainType == Rocks) {
        [context setStrategy:[[PedestrianStrategy alloc] init]];
    }

    MovementType result = [context identifyBestMovementType];

    XCTAssertEqual(result, Pedestrian);
}

- (void)testStrategyIfBicycleRoad {
    NavigatorContext *context = [[NavigatorContext alloc] init];
    TerrainType terrainType = BicycleRoad;

    if (terrainType == BicycleRoad) {
        [context setStrategy:[[BicycleStrategy alloc] init]];
    }

    MovementType result = [context identifyBestMovementType];

    XCTAssertEqual(result, Bicycle);
}

- (void)testStrategyIfSpeedWay {
    NavigatorContext *context = [[NavigatorContext alloc] init];
    TerrainType terrainType = SpeedWay;

    if (terrainType == SpeedWay) {
        [context setStrategy:[[VehicleStrategy alloc] init]];
    }

    MovementType result = [context identifyBestMovementType];

    XCTAssertEqual(result, Vehicle);
}

- (void)testStrategyIfNull {
    NavigatorContext *context = [[NavigatorContext alloc] init];

    MovementType result = [context identifyBestMovementType];

    XCTAssertEqual(result, Unknown);
}

@end
