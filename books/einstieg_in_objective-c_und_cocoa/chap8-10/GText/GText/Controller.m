//
//  Controller.m
//  GText
//

#import "Controller.h"

@implementation Controller

-(IBAction)sagHallo:(id)sender {
    [self.textHallo setStringValue:@"Hallo"];
}
-(IBAction)loesche:(id)sender {
    [self.textHallo setStringValue:@""];
}
@end
