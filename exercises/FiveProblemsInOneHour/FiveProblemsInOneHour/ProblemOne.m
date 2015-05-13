//
//  ProblemOne.m
//  FiveProblemsInOneHour
//
//  Created by Max on 10/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//
// https://blog.svpino.com/2015/05/07/five-programming-problems-every-software-engineer-should-be-able-to-solve-in-less-than-1-hour
// Problem 1:
// Write three functions that compute the sum of the numbers in a given list using a for-loop, a while-loop, and recursion.

#import "ProblemOne.h"

@implementation ProblemOne

+ (NSInteger)iterativeFor:(NSArray *)numbers {
    int sum = 0;
    for (NSNumber *n in numbers) {
        sum += [n intValue];
    }
    return sum;
}

+ (NSInteger)iterativeWhile:(NSArray *)numbers {
    int sum = 0;
    int count = 0;
    while (count < numbers.count) {
        sum += [numbers[count] intValue];
        count++;
    }
    return sum;
}

+ (NSInteger)recursive:(NSArray *)numbers {
    if (numbers.count == 0) {
        return 0;
    }
    return [numbers[0] intValue] + [self recursive:[numbers subarrayWithRange:NSMakeRange(1, numbers.count - 1)]];
}

@end
