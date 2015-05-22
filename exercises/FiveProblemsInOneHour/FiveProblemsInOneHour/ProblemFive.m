//
//  ProblemFive.m
//  FiveProblemsInOneHour
//
//  Created by Max on 16/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "ProblemFive.h"

@implementation ProblemFive

+ (NSArray *)createCombinations:(NSArray *)pool withTarget:(NSInteger)target {
    NSMutableArray *results = [NSMutableArray new];
    NSArray *permutations = [self createPermutations:pool];
    for (NSString *permutation in permutations) {
        NSExpression *expression = [NSExpression expressionWithFormat:permutation];
        NSNumber *result = [expression expressionValueWithObject:nil context:nil];
        if ([result intValue] == target) {
            [results addObject:result];
        }
    }

    return results;
}

+ (NSArray *)createPermutations:(NSArray *)pool {
    NSMutableArray *permutations = [NSMutableArray new];
    NSArray *delimiters = @[@"+", @"-", @""];


    return permutations;
}

@end
