//
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "LuckyMentor.h"


@interface LuckyMentor ()
@property(nonatomic) NSMutableArray *mentors;
@end

@implementation LuckyMentor {

}
- (id)initWithMentors {
    self = [super init];
    if (self) {
        self.mentors = [@[@"娘娘", @"金昊", @"佳宁", @"海彬", @"黄磊", @"索勤"] mutableCopy];
    }
    return self;
}

- (NSString *)guess:(NSInteger)value {
    if (self.mentors.count == 0) {
        return @"没人啦";
    }
    u_int32_t index = arc4random_uniform(self.mentors.count - 1);
    NSString *name = self.mentors[index];
    [self.mentors removeObject:name];
    return name;
}
@end