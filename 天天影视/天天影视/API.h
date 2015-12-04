//
//  API.h
//  微约
//
//  Created by 卢恒 on 15/11/12.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
typedef void (^MyCallback)(id obj);
@interface API : NSObject
+(void)GET:(NSString *)path andDic:(NSDictionary *)dic andCallback:(MyCallback)callback;
+(void)POST:(NSString *)path andDic:(NSDictionary *)dic andCallback:(MyCallback)callback;
+(NSString*)encodeUrlString:(NSString*)urlString;//网络请求中特殊符号编码

@end
