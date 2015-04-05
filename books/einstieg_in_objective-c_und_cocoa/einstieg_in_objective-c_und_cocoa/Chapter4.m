//
//  Chapter4.m
//  einstieg_in_objective-c_und_cocoa
//

#import "Chapter4.h"

@implementation Chapter4

+(void) nsString {
    NSString *textA = @"Spanien"; // 1
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

+(void) nsMutableString {
    NSMutableString *textA = [[NSMutableString alloc] initWithCapacity:20];
    [textA setString:@"Spanien"]; //2
    NSLog(@"%@", textA);
    [textA appendString:@" und Portugal"]; //3
    NSLog(@"%@", textA);
    float f = 8.5; //4
    [textA appendFormat:
     @" haben mehr als %.2f Mio. Einwohner", f];
    NSLog(@"%@", textA);
    [textA insertString:@", Italien" atIndex:7]; //5
    NSLog(@"%@", textA);
    NSMutableString *textB = [NSMutableString
                              stringWithString:@"Frankreich"];
    NSLog(@"%@", textB);
    
}

+(void) verweisId {
    id verweisA;
    verweisA = [NSNumber numberWithInt:5];
    NSLog(@"%@", verweisA);
    verweisA = [NSString stringWithUTF8String:"Hallo"]; NSLog(@"%@", verweisA);
    
}

+(void) nsArray {
    NSArray *arrayA = [[NSArray alloc]
                       initWithObjects:@"Spanien",@"Frankreich", [NSNumber numberWithInt:42],nil];
    NSLog(@"%@", arrayA);
    for(int i=0; i<[arrayA count]; i++)
        NSLog(@"%d: %@ ", i, [arrayA objectAtIndex:i]);
    for(id elementInArray in arrayA)
        NSLog(@"%@", elementInArray);
    NSArray *arrayB = [NSArray arrayWithObjects:@"Spanien",@"Frankreich",
                       [NSNumber numberWithInt:42],nil];
    NSLog(@"%@", arrayB);
}

+(void) nsMutableArray {
    NSMutableArray *arrayA = [NSMutableArray arrayWithObjects:@"Spanien", @"Frankreich", @"Italien", nil];
    NSLog(@"2 %@", arrayA);
    [arrayA removeLastObject];
    NSLog(@"3 %@", arrayA);
    [arrayA addObject:@"Schweiz"]; //4
    NSLog(@"4 %@", arrayA);
    [arrayA replaceObjectAtIndex:0 withObject:@"Portugal"];
    NSLog(@"5 %@", arrayA);
    [arrayA insertObject:@"Irland" atIndex:1];
    NSLog(@"6 %@", arrayA); //6
    [arrayA removeObjectAtIndex:2]; //7
    NSLog(@"7 %@", arrayA);
    [arrayA exchangeObjectAtIndex:0 withObjectAtIndex:2];
    NSLog(@"8 %@", arrayA);
    [arrayA sortUsingFunction:vergleich context:NULL];
//    [arrayA sortUsingSelector:@selector(compare:)];
    NSLog(@"9 %@", arrayA);
    NSArray *names = @[@"Brian", @"Matt", @"Chris", @"Alex", @"Steve", @"Paul"];
    
}
NSInteger vergleich(id verweis1, id verweis2, void *kontext) {
    NSString *a = verweis1;
    NSString *b = verweis2;
    return [a compare:b];
}

+(void) nsDictionary {
    NSDictionary *einwohnerDict = //1
    [[NSDictionary alloc] initWithObjectsAndKeys: [NSNumber numberWithInt:47],@"Spanien", [NSNumber numberWithInt:65],@"Frankreich", [NSNumber numberWithInt:61],@"Italien", nil];
    NSLog(@"%@", einwohnerDict);
    NSLog(@"Frankreich hat %@ Mio. Einwohner", //2
          [einwohnerDict objectForKey:@"Frankreich"]);
    for(NSString *schluessel in einwohnerDict) //3
        NSLog(@"%@ hat %@ Mio. Einwohner", schluessel,
              [einwohnerDict objectForKey:schluessel]);
    NSMutableDictionary *flaecheDict = //4
    [NSMutableDictionary dictionaryWithObjectsAndKeys:
     [NSNumber numberWithInt:503],@"Spanien", [NSNumber numberWithInt:675],@"Irland", nil];
    [flaecheDict setObject:
     [NSNumber numberWithInt:301] forKey:@"Italien"];
    [flaecheDict setObject:
     [NSNumber numberWithInt:505] forKey:@"Spanien"];
    NSLog(@"%@", flaecheDict);
    
    for(id key in flaecheDict) {
        NSLog(@"%@:%@", key, flaecheDict[key]);
    }
    NSDictionary *productManagers = @{@"iPhone" : @"Kate", @"iPad" : @"Kamal", @"Mobile Web" : @"Bill"};
}

+(void) uebung {
    int input, count = 5, solvedCount = 0;
    NSNumber *rand1, *rand2, *result;
    NSMutableArray *rand1Results, *rand2Results, *inputResults;
    rand1Results = [NSMutableArray arrayWithCapacity:count];
    rand2Results = [NSMutableArray arrayWithCapacity:count];
    inputResults = [NSMutableArray arrayWithCapacity:count];
    for (int i=0; i < count; i++) {
        rand1 = [NSNumber numberWithInt:arc4random() % 20 + 1];
        rand2 = [NSNumber numberWithInt:arc4random() % 20 + 1];
        result = @([rand1 integerValue] + [rand2 integerValue]);
        NSLog(@"Bitte ausrechnen: %@ + %@ = ", rand1, rand2);
        scanf("%d", &input);
        
        rand1Results[i] = rand1;
        rand2Results[i] = rand2;
        inputResults[i] = [NSNumber numberWithInt:input];
    }
    NSMutableString *resultString;
    for (int i=0; i < count; i++) {
        resultString = [NSMutableString stringWithString:@"falsch"];
        result = @([rand1Results[i] intValue] + [rand2Results[i] intValue]);
        if (inputResults[i] == result) {
            [resultString setString:@"richtig"];
            solvedCount++;
        }
        NSLog(@"%@ + %@ = %@, Ihre Eingabe ist %@.\n", rand1Results[i], rand2Results[i], result, resultString);
    }
    NSLog(@"Sie haben %d von %d Aufgaben richtig geloest.\n", solvedCount, count);
}

+(void) uebungAlternate {
    int input, count = 5, solvedCount = 0;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSNumber *rand1, *rand2, *result;
    NSString *resultString;
    for (int i=0; i < count; i++) {
        rand1 = @(arc4random() % 20 + 1);
        rand2 = @(arc4random() % 20 + 1);
        result = @([rand1 integerValue] + [rand2 integerValue]);
        NSLog(@"Bitte ausrechnen: %@ + %@ = ", rand1, rand2);
        scanf("%d", &input);
        if (input == [result intValue]) {
            resultString = @"richtig.";
            solvedCount++;
        } else {
            resultString = @"falsch.";
        }
        [dict setObject:[NSString stringWithFormat:@"%@ + %@ = %@, Ihre Eingabe ist %@", rand1, rand2, result, resultString] forKey:[NSNumber numberWithInt:i]];
    }
    NSLog(@"length: %ld", dict.count);
    for (id key in dict) {
        NSLog(@"%@", dict[key]);
    }
    NSLog(@"Sie haben %d von %d Aufgaben richtig geloest.\n", solvedCount, count);
}

@end
