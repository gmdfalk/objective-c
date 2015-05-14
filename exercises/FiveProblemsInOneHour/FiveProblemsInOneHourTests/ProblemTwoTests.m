//
//  ProblemTwoTests.m
//  FiveProblemsInOneHourTests
//
//  Created by Max on 10/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ProblemTwo.h"

@interface ProblemTwoTests : XCTestCase

@property NSArray *expected;
@property NSArray *list1;
@property NSArray *list2;

@end

@implementation ProblemTwoTests

- (void)setUp {
    [super setUp];
    self.expected = @[@"a", @1, @"b", @2, @"c", @3];
    self.list1 = @[@"a", @"b", @"c"];
    self.list2 = @[@1, @2, @3];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testCombineList {
    NSArray *result = [ProblemTwo combineList:self.list1 with:self.list2];
    XCTAssertTrue([result isEqualToArray:self.expected]);
}

- (void)testCombineListPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemTwo combineList:self.list1 with:self.list2];
     }];
}

@end
