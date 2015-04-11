//
//  Kopfrechentest.m
//  einstieg_in_objective-c_und_cocoa
//

#import "Kopfrechentest.h"
#import "Chapter5.h"

@implementation Kopfrechentest

-(NSMutableDictionary *) starten {
    NSDate *startZeit = [NSDate date];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSNumber *rand1, *rand2, *result;
    NSMutableArray *input = [NSMutableArray array], *nums1 = [NSMutableArray array], *nums2 = [NSMutableArray array];
    int inp;
    for (int i=0; i < 5; i++) {
        rand1 = [Chapter5 createRandomNumber];
        rand2 = [Chapter5 createRandomNumber];
        result = @([rand1 integerValue] + [rand2 integerValue]);
        NSLog(@"Bitte ausrechnen: %@ + %@ = ", rand1, rand2);
        scanf("%d", &inp);
        [input addObject:@(inp)];
        [nums1 addObject:rand1];
        [nums2 addObject:rand2];
    }
    [dict setValue:[NSNumber numberWithDouble:[startZeit timeIntervalSinceNow]] forKey:@"Zeit"];
    [dict setValue:input forKey:@"Eingaben"];
    [dict setValue:nums1 forKey:@"Zahl 1"];
    [dict setValue:nums2 forKey:@"Zahl 2"];
    
    return dict;
}

-(void) auswerten:(NSMutableDictionary *) ergebnisse {
    NSArray *input, *nums1, *nums2;
    NSInteger num1, num2, result, solvedCount = 0, len;
    NSString *resultString;
    input = ergebnisse[@"Eingaben"];
    nums1 = ergebnisse[@"Zahl 1"];
    nums2 = ergebnisse[@"Zahl 2"];
    len = [input count];
    for (int i=0; i < len; i++) {
        num1 = [nums1[i] intValue];
        num2 = [nums2[i] intValue];
        result = num1+num2;
        if (result == [input[i] intValue]) {
            resultString = @"richtig.";
            solvedCount++;
        } else {
            resultString = @"falsch.";
        }
        NSLog(@"%ld + %ld = %ld. Ihre Eingabe %@ ist %@", num1, num2, num1+num2,
              input[i], resultString);
    }
    NSLog(@"Sie haben %ld von %ld Aufgaben richtig beantwortet und %.2f Sekunden gebraucht.", solvedCount, len, [ergebnisse[@"Zeit"] doubleValue]);
}

-(void) speichern:(NSMutableDictionary *) ergebnisse mitDateiname:(NSString *) dateiname{
    [ergebnisse writeToFile:dateiname atomically:YES];
}

-(NSDictionary *) laden:(NSString *) dateiname {
    return [NSDictionary dictionaryWithContentsOfFile:dateiname];
}

@end
