//
//  DetailViewController.h
//  asdf
//
//  Created by Max on 11/05/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

