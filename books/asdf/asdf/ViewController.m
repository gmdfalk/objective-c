//
//  ViewController.m
//  asdf
//
//  Created by Falk, Geronimo on 15/04/15.
//  Copyright (c) 2015 Falk, Geronimo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *meinLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressed:(id)sender {
    NSLog(@"Knopf wurde gedrückt");
}

@end
