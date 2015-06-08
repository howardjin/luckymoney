//
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Guess.h"

@interface GuessTests : XCTestCase

@end
@implementation GuessTests

- (void)testBingo {
    Guess *guess = [[Guess alloc] initWithGoal:1];
    NSString *result = [guess tryNext:1];
    XCTAssert([result isEqual:@"Bingo!"], @"should show bingo after correct guess");
}

@end