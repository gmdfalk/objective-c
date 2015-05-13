//
//  ProblemTwo.m
//  FiveProblemsInOneHour
//
//  Created by Max on 10/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
// https://blog.svpino.com/2015/05/07/five-programming-problems-every-software-engineer-should-be-able-to-solve-in-less-than-1-hour
// Problem 2:
// Write a function that combines two lists by alternatingly taking elements. For example: given the two lists [a, b, c] and [1, 2, 3], the function should return [a, 1, b, 2, c, 3].

#import "ProblemTwo.h"

@implementation ProblemTwo

+ (NSArray *)combineList:(NSArray *)list1 with:(NSArray *)list2 {
    NSMutableArray *combinedList = [NSMutableArray new];

    for (int i = 0, j = 0; i < list1.count && j < list2.count; i++, j++) {
        [combinedList addObject:list1[i]];
        [combinedList addObject:list2[j]];
    }

    return [NSArray arrayWithArray:combinedList];
}

@end
