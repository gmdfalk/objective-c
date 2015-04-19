//
//  Kopfrechentest.h
//  einstieg_in_objective-c_und_cocoa
//

#import <Foundation/Foundation.h>

@interface Kopfrechentest : NSObject

-(NSMutableDictionary *) starten;
-(void) auswerten:(NSDictionary *) ergebnisse;
-(void) speichern:(NSMutableDictionary *) ergebnisse mitDateiname:(NSString *) dateiname;
-(NSDictionary *) laden:(NSString *) dateiname;

@end
