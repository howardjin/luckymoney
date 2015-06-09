//
//  ViewController.m
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//


#import "ViewController.h"
#import "LuckyMoney.h"
#import "LuckyMentor.h"


@interface ViewController ()
@property(weak, nonatomic) IBOutlet UILabel *banner;
@property(weak, nonatomic) IBOutlet UITextField *input;
@property(nonatomic) id<LuckyPicker> picker;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.picker = [[LuckyMoney alloc] initWithMoney:arc4random_uniform(100)];
//    self.picker = [[LuckyMoney alloc] initWithLuckNumbers];
    self.picker = [[LuckyMentor alloc] initWithMentors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    self.banner.text = [self.picker guess:[self.input.text integerValue]];
    self.input.text = @"";
    [self.input resignFirstResponder];
}

@end