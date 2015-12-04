//
//  Hot.m
//  天天影视
//
//  Created by 卢恒 on 15/12/4.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import "Hot.h"

@implementation Hot
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.recommends = [NSMutableArray array];
    }
    return self;
}
@end
