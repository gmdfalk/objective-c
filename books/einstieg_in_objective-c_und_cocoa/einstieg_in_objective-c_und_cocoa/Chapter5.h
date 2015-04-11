//
//  Chapter5.h
//  einstieg_in_objective-c_und_cocoa
//

#import <Foundation/Foundation.h>

@interface Chapter5 : NSObject

+(void) readAndWriteTextFiles;
+(void) readAndWriteXMLFiles;
+(void) booleanVariables;
+(void) moreNumberTypes;
+(void) nsRange;
+(void) geometricStructures;
+(void) dateAndTime;
+(void) blocks;
+(void) countdown;
+(void) exercise;
+(NSDictionary *) readXMLFile:(NSString *) path;
+(void) writeXMLFile:(NSMutableDictionary *) dictionary withPath:(NSString *) path;
+(NSMutableDictionary *) readInput:(NSInteger) count;
+(NSNumber *) createRandomNumber;
+(void) printResults:(NSDictionary *) dict;
@end
