//
//  Chapter6.m
//  einstieg_in_objective-c_und_cocoa
//

#import "Chapter6.h"
#import "Kopfrechentest.h"

@implementation Chapter6

+(void) exercise {
    Kopfrechentest *test = [[Kopfrechentest alloc] init];
    NSMutableDictionary *ergebnisse = [test starten];
    NSString *dateiname = @"/Users/Shared/chap6Exercise.xml";
    [test speichern:ergebnisse mitDateiname:dateiname];
    NSDictionary *ergebnisseAusDatei = [test laden:dateiname];
    [test auswerten:ergebnisseAusDatei];
}

@end
