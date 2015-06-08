//
//  Guess.m
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import "Guess.h"

@interface Guess ()
@property(nonatomic) NSInteger goal;
@end

@implementation Guess

- (instancetype)initWithGoal:(NSInteger)goal {
    self = [super init];
    if (self) {
        self.goal = goal;
    }

    return self;
}


- (NSString *)tryNext:(NSInteger)value {
    //TODO:
    return @"1-100";
}
@end
