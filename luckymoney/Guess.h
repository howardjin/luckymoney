//
//  Guess.h
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

@interface Guess : NSObject

- (instancetype)initWithGoal:(NSInteger)goal;

- (NSString *)tryNext:(NSInteger)value;
@end
