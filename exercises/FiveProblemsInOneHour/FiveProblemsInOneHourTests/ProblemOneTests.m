//
//  ProblemOneTests.m
//  FiveProblemsInOneHourTests
//
//  Created by Max on 10/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ProblemOne.h"

@interface ProblemOneTests : XCTestCase
@property NSArray *numbers;
@end

@implementation ProblemOneTests

- (void)setUp {
    [super setUp];
    self.numbers = @[@0, @1, @2, @3, @4, @5, @6, @7, @8, @9];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIterativeFor {
    XCTAssertEqual([ProblemOne iterativeFor:self.numbers], 45, "Sum should be 45");
}

- (void)testIterativeWhile {
    XCTAssertEqual([ProblemOne iterativeWhile:self.numbers], 45, "Sum should be 45");
}

- (void)testRecursive {
    XCTAssertEqual([ProblemOne recursive:self.numbers], 45, "Sum should be 45");
}

- (void)testIterativeForPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemOne iterativeFor:self.numbers];
     }];
}

- (void)testIterativeWhilePerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemOne iterativeWhile:self.numbers];
     }];
}

- (void)testRecursivePerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemOne recursive:self.numbers];
     }];
}

@end
