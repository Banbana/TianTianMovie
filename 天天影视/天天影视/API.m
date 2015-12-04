//
//  API.m
//  微约
//
//  Created by 卢恒 on 15/11/12.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import "API.h"
#import "AFNetworking.h"
@implementation API
+(void)GET:(NSString *)path andDic:(NSDictionary *)dic andCallback:(MyCallback)callback{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [manager GET:path parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        callback(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败");
    }];
    
}
+(void)POST:(NSString *)path andDic:(NSDictionary *)dic andCallback:(MyCallback)callback{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [manager POST:path parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        callback(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败");
    }];
}
//网络请求中特殊符号编码
+(NSString*)encodeUrlString:(NSString*)urlString{
    NSString *result = (NSString*)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(nil,
                                                                                            (CFStringRef)urlString, nil,
                                                                                            (CFStringRef)@"!*'();:@&=+$,/?%#[]{}", kCFStringEncodingUTF8));
    
    return result;
}


@end
