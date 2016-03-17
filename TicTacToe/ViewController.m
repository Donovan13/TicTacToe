//
//  ViewController.m
//  TicTacToe
//
//  Created by Kyle on 3/17/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.whichPlayerLabel.text = @"Player One - Go!";
}

- (IBAction)onButtonTapped:(UIButton *)sender {
    if (!self.toggle) {
        [sender setTitle:@"X" forState:UIControlStateNormal];
    } else {
        [sender setTitle:@"O" forState:UIControlStateNormal];
    }
    if ([sender isEqual: @" "]) {
        [sender setEnabled:YES];
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    } else if ([sender isEqual: @"O"]) {
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
//    else {
//        [sender setEnabled:NO];
//        [sender setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
//    }
    
     self.toggle = !self.toggle;
    if ([self.whichPlayerLabel.text isEqual: @"Player One - Go!"]) {
        self.whichPlayerLabel.text = @"Player Two - Go!";
    } else {
        self.whichPlayerLabel.text = @"Player One - Go!";
    }
}

@end
