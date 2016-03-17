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
}

- (IBAction)onButtonTapped:(UIButton *)sender {
    self.whichPlayerLabel.text = @"Player One - Go!";
    if ([self.whichPlayerLabel.text isEqual: @"Player One - Go!"]) {
        NSLog(@"The next player will be Player Two.");
    }
    else {
        NSLog(@"Why isn't this working?");
    }
}


@end
