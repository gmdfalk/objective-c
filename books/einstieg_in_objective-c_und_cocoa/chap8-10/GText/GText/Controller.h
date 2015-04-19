//
//  Controller.h
//  GText
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h> 

@interface Controller : NSObject

@property IBOutlet NSTextField *textHallo;

-(IBAction)sagHallo:(id)sender;
-(IBAction)loesche:(id)sender;

@end

