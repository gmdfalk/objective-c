//
//  UnitTestingTests.m
//  UnitTestingTests
//
//  Created by Max on 19/04/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface UnitTestingTests : XCTestCase
@property (nonatomic) Calculator *calc;
@end

@implementation UnitTestingTests

- (void)setUp {
    [super setUp];
    self.calc = [Calculator new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testProductOf {
    XCTAssertEqual(3, [self.calc sumOf:1 and:2]);
}

- (void)testSumOf {
    XCTAssertEqual(9, [self.calc productOf:3 and:3]);
    XCTAssertEqual(12, [self.calc productOf:4 and:3]);

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
         // Put the code you want to measure the time of here.
     }];
}

@end
