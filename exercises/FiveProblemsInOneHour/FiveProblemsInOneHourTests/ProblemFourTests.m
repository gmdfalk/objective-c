//
//  ProblemFourTests.m
//  FiveProblemsInOneHour
//
//  Created by Max on 14/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ProblemFour.h"


@interface ProblemFourTests : XCTestCase
@end

@implementation ProblemFourTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFindLargestNumber {
    NSInteger result;
    result = [ProblemFour findLargestNumber:@[@50, @9, @12, @3, @84]];
    XCTAssertTrue(result == 98450312);
    result = [ProblemFour findLargestNumber:@[@50, @2, @1, @9]];
    XCTAssertTrue(result == 95021);
//    result = [ProblemFour findLargestNumber:@[@420, @42, @423]];
//    XCTAssertTrue(result == 42423420);
//    result = [ProblemFour findLargestNumber:@[@5, @50, @56]];
//    XCTAssertTrue(result == 56550);
}

- (void)testFindLargestNumberPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
         [ProblemFour findLargestNumber:@[@50, @9, @12, @3, @84]];
     }];
}

@end
