//
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LuckyMoney.h"

@interface LuckyMoneyTests : XCTestCase

@end
@implementation LuckyMoneyTests

- (void)testBingo {
    LuckyMoney *guess = [[LuckyMoney alloc] initWithMoney:1];
    NSString *result = [guess guess:1];
    XCTAssert([result isEqual:@"Bingo!"], @"should show bingo after correct guess");
}

- (void)testShouldReportLessThan {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithMoney:50];
    NSString *result = [luckyMoney guess:9];
    XCTAssert([result isEqual:@"10-100"], @"should show upper range after smaller guess");
}

- (void)testShouldReportLessGreaterThan {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithMoney:50];
    NSString *result = [luckyMoney guess:51];
    XCTAssert([result isEqual:@"1-50"], @"should show upper range after bigger guess");
}

- (void)testShouldAccumulateGuesses {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithMoney:50];
    [luckyMoney guess:1];
    NSString *result = [luckyMoney guess:99];
    XCTAssert([result isEqual:@"2-98"], @"should accumulate historical guesses");
}

@end