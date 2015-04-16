//
//  Controller.m
//  GPopUp
//
//  Created by Max on 15/04/15.
//
//

#import "Controller.h"

@implementation Controller

-(IBAction)zeigeAuswahl:(id)sender {
    [self.textAusgabe setStringValue:[NSString stringWithFormat:@"%ld : %@", [self.comboLand indexOfSelectedItem], [self.comboLand objectValueOfSelectedItem ]]];
}

-(IBAction)loescheAuswahl:(id)sender {
    NSInteger x = [self.comboLand indexOfSelectedItem];
    if (x != -1) {
        [self.textInfo setStringValue:[NSString stringWithFormat:@"Gelöscht: %@", [self.comboLand objectValueOfSelectedItem]]];
        [self.comboLand removeItemAtIndex:x];
    }
}

-(IBAction)hinzuEintrag:(id)sender {
    if ([[self.comboLand stringValue] compare:@""] == NSOrderedSame) {
        return;
    }
    [self.comboLand addItemWithObjectValue:[self.comboLand stringValue]];
    [self.textInfo setStringValue:[NSString stringWithFormat:@"Hinzugefügt: %@", [self.comboLand stringValue]]];
    [self.comboLand selectItemAtIndex:[self.comboLand numberOfItems] -1];
}

-(void)awakeFromNib{
    [self.comboLand removeAllItems];
    [self.comboLand addItemsWithObjectValues:@[@"Spanien", @"Italien", @"Frankreich"]];
    [self.comboLand selectItemAtIndex:2];
}

@end
