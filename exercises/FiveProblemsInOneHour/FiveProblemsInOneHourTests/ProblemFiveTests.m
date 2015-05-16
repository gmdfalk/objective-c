//
//  ProblemFiveTests.m
//  FiveProblemsInOneHour
//
//  Created by Max on 16/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ProblemFive.h"

@interface ProblemFiveTests : XCTestCase

@end

@implementation ProblemFiveTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testCreateCombinations {
    NSArray *result = [ProblemFive createCombinations:@[@1, @2, @3, @4, @5, @6, @7, @8, @9]];
    XCTAssertTrue(result.count == 0);
}

- (void)testPerformanceExample {
    [self measureBlock:^{
         NSArray *result = [ProblemFive createCombinations:@[@1, @2, @3, @4, @5, @6, @7, @8, @9]];
     }];
}

@end
