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

- (void)testShouldNotExtendNumberRange {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithMoney:50];
    [luckyMoney guess:40];
    NSString *result = [luckyMoney guess:30];
    XCTAssert([result isEqual:@"41-100"], @"should not extend lower bounds");
}

- (void)testShouldNotExtendNumberUpperRange {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithMoney:50];
    [luckyMoney guess:60];
    NSString *result = [luckyMoney guess:80];
    XCTAssert([result isEqual:@"1-59"], @"should not extend higher bounds");
}

- (void)testShouldBeAbleToInitWithLuckyNumbers {
    LuckyMoney *luckyMoney = [[LuckyMoney alloc] initWithLuckNumbers];
    NSString *result1 = [luckyMoney guess:66];
    NSString *result2 = [luckyMoney guess:88];
    NSArray *array = @[result1, result2];
    XCTAssert([array containsObject:@"Bingo!"], @"should init with lucky numbers");
}

@end