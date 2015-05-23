//
//  CodechefTests.m
//  CodechefTests
//
//  Created by Max on 23/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "AmbiguousPermutations.h"

@interface CodechefTests : XCTestCase

@end

@implementation CodechefTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
    XCTAssertTrue([[AmbiguousPermutations main:4 withInput:@"1 4 3 2"] isEqualToString:@"ambiguous"]);
    XCTAssertTrue([[AmbiguousPermutations main:5 withInput:@"2 3 4 5 1"] isEqualToString:@"unambiguous"]);
    XCTAssertTrue([[AmbiguousPermutations main:1 withInput:@"1"] isEqualToString:@"ambiguous"]);
}

@end
