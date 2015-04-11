//
//  Chapter5.m
//  einstieg_in_objective-c_und_cocoa
//

#import "Chapter5.h"

@implementation Chapter5

+(void) readAndWriteTextFiles{
    
    NSString *speicherText = @"Ein Test mit äöü"; //1
    NSString *nameMitPfad = @"/Users/Shared/aus.txt";
    //    NSString *nameMitPfad = @"aus.txt"; //3
    //    NSString *nameMitPfad = @"../aus.txt"; //4
    //    NSString *nameMitPfad = @"../sym/aus.txt"; //5
    [speicherText writeToFile:nameMitPfad atomically:YES encoding:NSUTF8StringEncoding error:NULL]; //6
    NSString *ladeText = [NSString stringWithContentsOfFile:nameMitPfad encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"%@", ladeText);
    
}

+(void) readAndWriteXMLFiles {
    NSString *arrayDatei = @"/Users/Shared/meinArray.xml";
    NSArray *arrayA = [NSArray arrayWithObjects:@"Spanien", @"Frankreich", @"Italien", nil];
    [arrayA writeToFile:arrayDatei atomically:YES];
    NSArray *arrayB = [NSArray arrayWithContentsOfFile:arrayDatei];
    NSLog(@"%@", arrayB);
    NSString *dictDatei = @"/Users/Shared/meinDictionary.xml";
    NSDictionary *dictA = [[NSDictionary alloc] initWithObjectsAndKeys: [NSNumber numberWithInt:47],@"Spanien", [NSNumber numberWithInt:65],@"Frankreich", [NSNumber numberWithInt:61],@"Italien", nil];
    [dictA writeToFile:dictDatei atomically:YES];
    NSDictionary *dictB = [NSDictionary dictionaryWithContentsOfFile:dictDatei];
    NSLog(@"%@", dictB);
}

+(void) booleanVariables {
    BOOL boolWert;
    boolWert = YES;
    NSLog(@"%d", boolWert);
    boolWert = NO;
    NSLog(@"%d", boolWert);
    int i = 42;
    boolWert = (i > 10);
    if(boolWert) {
        NSLog(@"Zahl ist größer als 10");
    }
}

+(void) moreNumberTypes {
    NSInteger intZahl = -42;
    NSLog(@"%ld", intZahl);
    NSLog(@"Von %ld bis %ld", NSIntegerMin, NSIntegerMax);
    NSUInteger uintZahl = 42;
    NSLog(@"%lu", uintZahl);
    NSLog(@"Von 0 bis %lu", NSUIntegerMax);
    CGFloat floatZahl = 4.2;
    NSLog(@"%f", floatZahl);
    NSLog(@"Von %e bis %e", CGFLOAT_MIN, CGFLOAT_MAX);
}

+(void) nsRange {
    NSRange rangeA = NSMakeRange(0,2);
    NSString *textA = @"Mein erster Text";
    NSString *textB = [textA substringWithRange:rangeA];
    NSLog(@"%@", textB);
    NSArray *arrayA = [NSArray arrayWithObjects: @"Spanien",@"Frankreich",@"Italien",nil]; //3
    NSArray *arrayB = [arrayA subarrayWithRange:rangeA];
    NSLog(@"%@", arrayB);
    NSRange rangeB = NSMakeRange(5, [textA length] - 5);
    NSString *textC = [textA substringWithRange:rangeB];
    NSLog(@"%@", textC);
    NSMutableString *textD = [NSMutableString stringWithString:@"Ein neuer Text"];
    NSLog(@"%@", textD);
    NSRange rangeD = [textD rangeOfString:@"neuer "];
    if(rangeD.length > 0) {
        [textD deleteCharactersInRange:rangeD]; //8
        NSLog(@"%@", textD);
        [textD insertString:@"geänderter " atIndex:rangeD.location];
        NSLog(@"%@", textD);
    }
    
}

+(void) geometricStructures {
    NSPoint punktA = NSMakePoint(10,80);
    NSLog(@"Punkt, Lage: x %.1f, y %.1f",
          punktA.x, punktA.y);
    NSSize groesseA = NSMakeSize(400,150);
    NSLog(@"Größe: Breite %.1f, Höhe %.1f",
          groesseA.width, groesseA.height);
    NSRect rechteckA = NSMakeRect(10, 80, 400, 150);
    NSLog(@"Rechteck, Lage: x %.1f, y %.1f",
          rechteckA.origin.x, rechteckA.origin.y);
    NSLog(@"Rechteck, Größe: Breite %.1f, Höhe %.1f", rechteckA.size.width, rechteckA.size.height);
    
}

+(void) dateAndTime {
    NSDate *startzeit = [NSDate date];
    int a = 1;
    for(int i=1; i<=2e8; i++){
        a = -a;
        
    }
    NSLog(@"%f", 2e8);
    NSTimeInterval dauer = -[startzeit timeIntervalSinceNow];
    NSLog(@"Dauer: %f Sekunden", dauer);
    NSDate *zeitpunktA = [NSDate dateWithString: @"2013-01-28 15:30:00 +0100"];
    NSLog(@"Zeitpunkt: %@", zeitpunktA);
    NSDateFormatter *datumsformat = [[NSDateFormatter alloc] init];
    [datumsformat setDateFormat:@"dd.MM.yyyy HH:mm:ss"];
    NSLog(@"Zeitpunkt formatiert: %@",[datumsformat stringFromDate:zeitpunktA]);
    NSTimeInterval zehnTage = 10 * 24 * 60 * 60; // 6
    NSDate *zeitpunktB = [zeitpunktA dateByAddingTimeInterval:zehnTage];
    NSLog(@"Zeitpunkt 10 Tage später: %@", zeitpunktB);
}

+(void) blocks {
    void(^hallo)(void) = ^ {
        NSLog(@"hallo");
    };
    hallo();
    void(^doppeltAusgeben)(int) = ^(int x) {
        NSLog(@"%d", 2 * x);
    };
    doppeltAusgeben(6);
    doppeltAusgeben(17);
    int zahl = 0;
    int(^summe)(int, int) = ^(int a, int b) {
        return a + b + zahl;
    };
    NSLog(@"%d", summe(3,8));
    NSLog(@"%d", summe(7,12));
    zahl = 5; //8
    NSLog(@"%d", summe(6,3));
}

+(void) countdown {
    for (int i=0; i < 100; i++){
        NSLog(@"%d",100-i);
    }
}

+(void) exercise {
    NSDate *startTime = [NSDate date];
    NSMutableDictionary *dict = [Chapter5 readInput:5];
    NSNumber *timeDifference = [NSNumber numberWithDouble:[startTime timeIntervalSinceNow]];
    [dict setValue:timeDifference forKey:@"Zeit"];
    NSString *path = @"/Users/Shared/chap5Exercise.xml";
    [Chapter5 writeXMLFile:dict withPath:path];
    NSDictionary *dictFromFile = [Chapter5 readXMLFile:path];
    [Chapter5 printResults:dictFromFile];
}


+(NSDictionary *) readXMLFile:(NSString *) path {
    return [NSDictionary dictionaryWithContentsOfFile:path];
}

+(void) writeXMLFile:(NSDictionary *) dictionary withPath:(NSString *) path {
    [dictionary writeToFile:path atomically:YES];
    
}


+(NSMutableDictionary *) readInput:(NSInteger) count {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSNumber *rand1, *rand2, *result;
    NSMutableArray *input = [NSMutableArray array], *nums1 = [NSMutableArray array], *nums2 = [NSMutableArray array];
    int inp;
    for (int i=0; i < count; i++) {
        rand1 = [self createRandomNumber];
        rand2 = [self createRandomNumber];
        result = @([rand1 integerValue] + [rand2 integerValue]);
        NSLog(@"Bitte ausrechnen: %@ + %@ = ", rand1, rand2);
        scanf("%d", &inp);
        [input addObject:@(inp)];
        [nums1 addObject:rand1];
        [nums2 addObject:rand2];
    }
    [dict setValue:input forKey:@"Eingaben"];
    [dict setValue:nums1 forKey:@"Zahl 1"];
    [dict setValue:nums2 forKey:@"Zahl 2"];
    return dict;
}

+(NSNumber *) createRandomNumber {
    return [NSNumber numberWithInt:(arc4random() % 20 + 1)];
}


+(void) printResults:(NSDictionary *) dict {
    NSArray *input, *nums1, *nums2;
    NSInteger len, num1, num2;
    input = dict[@"Eingaben"];
    nums1 = dict[@"Zahl 1"];
    nums2 = dict[@"Zahl 2"];
    len = [input count];
    for (int i=0; i < len; i++) {
        num1 = [nums1[i] intValue];
        num2 = [nums2[i] intValue];
        NSLog(@"%ld + %ld = %ld. Ihre Eingabe ist %@", num1, num2, num1+num2, num1+num2 == [input[i] intValue] ? @"richtig" : @"falsch");
    }
}

@end

