//
//  Controller.m
//  GRechnen
//
//  Created by Falk, Geronimo on 13/04/15.
//
//

#import "Controller.h"

@implementation Controller

-(IBAction)celsiusToFahrenheit:(id)sender {
    float celsius = [self.textInput floatValue];
    float fahrenheit = (celsius * 9.0 / 5.0) + 32;
    [self.textOutput setStringValue:[NSString stringWithFormat:@"%.2f°C = %.2f°F", celsius, fahrenheit ]];
}
-(IBAction)fahrenheitToCelsius:(id)sender {
    float fahrenheit = [self.textInput floatValue];
    float celsius = (fahrenheit * 9.0 / 5.0) + 32;
    [self.textOutput setStringValue:[NSString stringWithFormat:@"%.2f°F = %.2f°C", fahrenheit, celsius ]];
}


@end
