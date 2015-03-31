//
//  main.m
//  einstieg_chapter_4
//
//  Created by Falk, Geronimo on 30/03/2015.
//  Copyright (c) 2015 Falk, Geronimo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSNumber *zahlA = [[NSNumber alloc] initWithInt:12]; NSLog(@"%@", zahlA);
        NSNumber *zahlB = [[NSNumber alloc] initWithFloat:7.8]; NSLog(@"%@", zahlB);
        NSNumber *zahlC = [NSNumber numberWithInt:12]; NSLog(@"%@", zahlC);
        
        if([zahlA isEqualToNumber:zahlB])
            NSLog(@"Zahlen sind gleich");
        else
            NSLog(@"Zahlen sind nicht gleich");
        
        NSComparisonResult ergebnis = [zahlA compare:zahlB];
        
        if(ergebnis == NSOrderedAscending)
            NSLog(@"Zahlen stehen aufsteigend");
        else if(ergebnis == NSOrderedDescending)
            NSLog(@"Zahlen stehen absteigend");
        else if(ergebnis == NSOrderedSame)
            NSLog(@"Zahlen sind gleich");
        
        NSLog(@"%d", [zahlC isEqualTo:zahlA]);
    }
    return 0;
}
