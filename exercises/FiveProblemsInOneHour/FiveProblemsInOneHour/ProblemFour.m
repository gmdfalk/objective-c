//
//  ProblemFour.m
//  FiveProblemsInOneHour
//
//  Created by Max on 14/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "ProblemFour.h"

@implementation ProblemFour
+ (NSMutableArray *)toStringArray:(NSArray *)numbers {
    NSMutableArray *stringArray = [NSMutableArray new];

    for (NSNumber *number in numbers) {
        [stringArray addObject:number.description];
    }
    return stringArray;
}

+ (NSInteger)findLargestNumber:(NSArray *)numbers {
    NSMutableArray *sortedNumbers;
    NSSortDescriptor *highestToLowest;

    sortedNumbers = [self toStringArray:numbers];
    highestToLowest = [NSSortDescriptor sortDescriptorWithKey:@"self"
                                                    ascending:NO
                                                     selector:@selector(compare:)];

    [sortedNumbers sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];

    return [[sortedNumbers componentsJoinedByString:@""] intValue];
}

@end
