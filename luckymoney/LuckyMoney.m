//
//  LuckyMoney.m
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import "LuckyMoney.h"

@interface LuckyMoney ()
@property(nonatomic) NSInteger goal;
@property(nonatomic) NSInteger min;
@property(nonatomic) NSInteger max;
@end

@implementation LuckyMoney

- (instancetype)initWithMoney:(NSInteger)goal {
    self = [super init];
    if (self) {
        self.goal = goal;
        self.min = 1;
        self.max = 100;
    }

    return self;
}

- (NSString *)guess:(NSInteger)value {
    //TODO:
    if (value < self.goal) {
        self.min = value + 1;
        return [NSString stringWithFormat:@"%@-%@", @(self.min), @(self.max)];
    } else if (value > self.goal){
        self.max = value - 1;
        return [NSString stringWithFormat:@"%@-%@", @(self.min), @(self.max)];
    }
    return @"Bingo!";
}
@end
