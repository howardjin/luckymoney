//
//  luckymoneyTests.m
//  luckymoneyTests
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LuckyMentor.h"

@interface LuckyMentorTests : XCTestCase

@end

@implementation LuckyMentorTests

- (void)testShouldReturnNames {
    LuckyMentor *mentor = [[LuckyMentor alloc] initWithMentors];
    NSArray *mentors = @[@"娘娘", @"金昊", @"佳宁", @"海彬", @"黄磊", @"索勤"];
    XCTAssert([mentors containsObject:[mentor guess:0]], @"normal picker");
}

- (void)testShouldNeverRepeat {
    LuckyMentor *mentor = [[LuckyMentor alloc] initWithMentors];
    XCTAssertFalse([[mentor guess:0] isEqual:[mentor guess:0]], @"duplicated");
}

- (void)testShouldShoutOutNoNameAfterAll {
    LuckyMentor *mentor = [[LuckyMentor alloc] initWithMentors];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    [mentor guess:0];
    XCTAssert([[mentor guess:0] isEqual:@"没人啦"], @"no name at the end");
}
@end
