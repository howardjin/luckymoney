//
//  ViewController.m
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//


#import "ViewController.h"
#import "Guess.h"


@interface ViewController ()
@property(weak, nonatomic) IBOutlet UILabel *banner;
@property(weak, nonatomic) IBOutlet UITextField *input;
@property(nonatomic) Guess *guess;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.guess = [[Guess alloc] initWithGoal:arc4random_uniform(100)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    self.input.text = @"";
    [self.input resignFirstResponder];
    self.banner.text = [self.guess tryNext:[self.input.text integerValue]];
}

@end