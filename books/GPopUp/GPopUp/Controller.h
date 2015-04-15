//
//  Controller.h
//  GPopUp
//
//  Created by Falk, Geronimo on 15/04/15.
//
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Controller : NSObject

@property IBOutlet NSTextField *textAusgabe;
@property IBOutlet NSTextField *textEingabe;
@property IBOutlet NSTextField *textInfo;
@property IBOutlet NSPopUpButton *popupLand;

-(IBAction)zeigeAuswahl:(id)sender;
-(IBAction)loescheAuswahl:(id)sender;
-(IBAction)hinzuEintrag:(id)sender;

@end
