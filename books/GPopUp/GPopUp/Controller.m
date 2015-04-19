//
//  Controller.m
//  GPopUp
//
//  Created by Max on 15/04/15.
//
//

#import "Controller.h"

@implementation Controller

- (IBAction)zeigeAuswahl:(id)sender {
    [self.textAusgabe setStringValue:[NSString stringWithFormat:@"%ld : %@", [self.popupLand indexOfSelectedItem], [self.popupLand titleOfSelectedItem]]];
}

- (IBAction)loescheAuswahl:(id)sender {
    NSInteger x = [self.popupLand indexOfSelectedItem];
    if (x != -1) {
        [self.textInfo setStringValue:[NSString stringWithFormat:@"Gelöscht: %@", [self.popupLand titleOfSelectedItem]]];
        [self.popupLand removeItemAtIndex:x];

    }
}

- (IBAction)hinzuEintrag:(id)sender {
    if ([[self.textEingabe stringValue] compare:@""] == NSOrderedSame) {
        return;
    }
    [self.popupLand addItemWithTitle:[self.textEingabe stringValue]];
    [self.textInfo setStringValue:[NSString stringWithFormat:@"Hinzugefügt: %@", [self.textEingabe stringValue]]];
    [self.popupLand selectItemAtIndex:[self.popupLand numberOfItems] -1];
}

- (void)awakeFromNib {
    [self.popupLand removeAllItems];
    [self.popupLand addItemsWithTitles:@[@"Spanien", @"Italien", @"Frankreich"]];
    [self.popupLand selectItemAtIndex:2];
}

@end
