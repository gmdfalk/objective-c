//
//  Controller.h
//  GCheck
//
//  Created by Falk, Geronimo on 15/04/15.
//
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Controller : NSObject
@property IBOutlet NSButton *checkMeerblick;
@property IBOutlet NSButton *checkBadewanne;
@property IBOutlet NSButton *checkMinibar;
@property IBOutlet NSTextField *textAusgabe;

-(IBAction)zeigeAuswahl:(id)sender;

@end
