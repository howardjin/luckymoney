//
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LuckyMoney.h"


@interface LuckyMentor : NSObject<LuckyPicker>
- (id)initWithMentors;

- (NSString *)guess:(NSInteger)value;
@end