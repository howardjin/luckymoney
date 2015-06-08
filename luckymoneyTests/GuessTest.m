//
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LuckyMoney.h"

@interface GuessTests : XCTestCase

@end
@implementation GuessTests

- (void)testBingo {
    LuckyMoney *guess = [[LuckyMoney alloc] initWithMoney:1];
    NSString *result = [guess guess:1];
    XCTAssert([result isEqual:@"Bingo!"], @"should show bingo after correct luckyMoney");
}

@end