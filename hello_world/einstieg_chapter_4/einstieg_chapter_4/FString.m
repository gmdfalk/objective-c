//
//  FString.m
//  einstieg_chapter_4
//
//  Created by Falk, Geronimo on 30/03/2015.
//  Copyright (c) 2015 Falk, Geronimo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool
    {
        NSString *textA = @"Spanien"; // 1 +
        NSLog(@"%@", textA);
        NSString *textB = [[NSString alloc] initWithUTF8String:"Frankreich"]; // 2
        NSLog(@"%@", textB);
        NSString *textC = [NSString
                           stringWithUTF8String:"Italien"];
        NSLog(@"%@", textC);
        int i = 5;
        float f = 7.8;
        NSString *textD = [[NSString alloc] initWithFormat:
                           @"Text und Zahlen: %d und %.2f", i, f];
        NSLog(@"%@", textD);
        NSString *textE = [NSString stringWithFormat: @"Text und Zahlen: %d und %.2f", i, f];
        NSLog(@"%@", textE);
        textE = [NSString stringWithFormat:
                 @"%@ und %@", textE, @"noch mehr"];
        NSLog(@"%@", textE);
        if([textA isEqualToString:@"Spanien"])
            NSLog(@"Objekt beinhaltet Text: Spanien");
        NSComparisonResult ergebnis = [textA compare:textB]; if(ergebnis == NSOrderedAscending)
            NSLog(@"Texte stehen aufsteigend"); else if(ergebnis == NSOrderedDescending)
                NSLog(@"Texte stehen absteigend");
            else if(ergebnis == NSOrderedSame)
                NSLog(@"Texte sind gleich");
    }
    return 0; }