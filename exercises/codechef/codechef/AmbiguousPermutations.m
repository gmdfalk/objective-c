//
//  AmbiguousPermutations.m
//  codechef
//
//  Created by Max on 23/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "AmbiguousPermutations.h"

@implementation AmbiguousPermutations
+ (NSString *)main:(NSInteger)n withInput:(NSString *)input {
    assert(n >= 1 && n <= 100000);
    NSArray *nums = [input componentsSeparatedByString:@" "];
    NSArray *inversedPermutation = [self createInversePermutation:nums];
    return [inversedPermutation isEqualToArray:nums ] ? @"ambiguous" : @"unambiguous";
}

+ (NSArray *)createInversePermutation:(NSArray *)nums {
    NSMutableArray *result = [NSMutableArray new];
    for (int i = 0; i < nums.count; i++) {
        [result addObject:nums[[nums[i] intValue] - 1]];
    }
    return result;
}

@end
