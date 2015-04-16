//
//  Controller.m
//  GCheck
//
//  Created by Max on 15/04/15.
//
//

#import "Controller.h"

@implementation Controller

-(void) awakeFromNib {
    [self.checkBadewanne setState:NSOnState];
    [self.checkMeerblick setState:NSOffState];
    [self.checkMinibar setState:NSOnState];
}

-(void)zeigeAuswahl:(id)sender {
    int preis = 40;
    if(self.checkMeerblick.state) {
        preis += 10;
    }
    if (self.checkBadewanne.state) {
        preis += 5;
    }
    if (self.checkMinibar.state) {
        preis += 7;
    }
    [self.textAusgabe setStringValue:[NSString stringWithFormat:@"Preis gesamt: %d €", preis]];
}

@end
