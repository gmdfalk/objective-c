//
//  Controller.h
//  GRadio
//
//  Created by Max on 15/04/15.
//
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Controller : NSObject
@property IBOutlet NSMatrix *matrixPersonen;
@property IBOutlet NSTextField *textAusgabe;
@property IBOutlet NSTextField *textInfo;

-(IBAction)zeigeAuswahl:(id)sender;

@end
