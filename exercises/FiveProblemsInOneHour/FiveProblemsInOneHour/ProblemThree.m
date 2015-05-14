//
//  ProblemThree.m
//  FiveProblemsInOneHour
//
//  Created by Max on 14/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "ProblemThree.h"

@implementation ProblemThree

+ (NSArray *)computeFibonacciSequence:(NSInteger)iterations {
    NSMutableArray *sequence = [NSMutableArray new];
    NSInteger lower, upper, temp;
    lower = 0;
    upper = 1;
    for (int i = 0; i < iterations; i++) {
        if (i < 2) {
            [sequence addObject:[NSNumber numberWithInt:i]];
            continue;
        }
        temp = upper;
        upper += lower;
        lower = temp;
        [sequence addObject:[NSNumber numberWithLong:upper]];
    }

    return sequence;
}

@end
