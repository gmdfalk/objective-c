//
//  Controller.m
//  GRadio
//
//  Created by Falk, Geronimo on 15/04/15.
//
//

#import "Controller.h"

@implementation Controller

-(void) awakeFromNib {
    [[self.matrixPersonen cellAtRow:0 column:0] setState:NSOffState];
    [[self.matrixPersonen cellAtRow:2 column:0] setState:NSOnState];
}
-(IBAction)zeigeAuswahl:(id)sender {
    int preis;
    NSButtonCell *auswahl =
    [self.matrixPersonen selectedCell];
    [self.textInfo setStringValue:[auswahl title]];
    NSArray *zellenArray = [self.matrixPersonen cells];
    if(auswahl == [zellenArray objectAtIndex:0])
        preis = 60;
    else if(auswahl == [zellenArray objectAtIndex:1]) preis = 70;
    else
        preis = 80;
    [self.textAusgabe setStringValue:[NSString stringWithFormat:@"Preis %d €", preis]];
}

@end
