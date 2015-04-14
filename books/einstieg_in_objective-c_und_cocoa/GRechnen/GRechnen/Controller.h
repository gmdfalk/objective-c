//
//  Controller.h
//  GRechnen
//
//  Created by Falk, Geronimo on 13/04/15.
//
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Controller : NSObject

@property IBOutlet NSTextField *textInput;
@property IBOutlet NSTextField *textResult;

-(IBAction)celsiusToFahrenheit:(id)sender;
-(IBAction)fahrenheitToCelsius:(id)sender;

@end
