//
//  LuckyMoney.h
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

@interface LuckyMoney : NSObject

- (instancetype)initWithMoney:(NSInteger)goal;

- (NSString *)guess:(NSInteger)value;

- (id)initWithLuckNumbers;
@end
