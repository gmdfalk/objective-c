//
//  ProblemThreeTests.m
//  FiveProblemsInOneHour
//
//  Created by Max on 14/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ProblemThree.h"

@interface ProblemThreeTests : XCTestCase
@property NSArray *expected;
@end

@implementation ProblemThreeTests

- (void)setUp {
    [super setUp];
    self.expected = @[@0, @1, @1, @2, @3, @5, @8, @13, @21, @34];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testComputeFibonacciSequence {
    NSArray *result = [ProblemThree computeFibonacciSequence:10];
    XCTAssertTrue([result isEqualToArray:self.expected]);
}

- (void)testComputeFibonacciSequencePerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemThree computeFibonacciSequence:10];
     }];
}

@end
