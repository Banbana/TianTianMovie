//
//  Hot.h
//  天天影视
//
//  Created by 卢恒 on 15/12/4.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hot : NSObject
@property (nonatomic, copy)NSString *iding;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *slug;
@property (nonatomic, strong)NSMutableArray *recommends;
@end
