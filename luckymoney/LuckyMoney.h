//
//  LuckyMoney.h
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

@protocol LuckyPicker
- (NSString *)guess:(NSInteger)value;
@end

@interface LuckyMoney : NSObject<LuckyPicker>

- (instancetype)initWithMoney:(NSInteger)goal;

- (NSString *)guess:(NSInteger)value;

- (id)initWithLuckNumbers;
@end
