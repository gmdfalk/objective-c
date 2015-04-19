//
//  Controller.h
//  GRechnen
//
//  Created by Max on 13/04/15.
//
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Controller : NSObject

@property IBOutlet NSTextField *textInput;
@property IBOutlet NSTextField *textOutput;

-(IBAction)celsiusToFahrenheit:(id)sender;
-(IBAction)fahrenheitToCelsius:(id)sender;

@end
