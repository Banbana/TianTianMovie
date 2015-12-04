//
//  TuiJianViewController.m
//  天天影视
//
//  Created by 卢恒 on 15/12/4.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import "TuiJianViewController.h"

@interface TuiJianViewController ()

@end

@implementation TuiJianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"天天影视";
    [self addTableView];
    [self qingqiuCellTitle];
    
}
-(void)addTableView{
    UITableView *tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    [self.view addSubview:tableview];
}
-(void)qingqiuCellTitle{
    NSString *path = @"http://tv.luckyamy.com/index/?app=jiji126&ver=1.3";
    [API GET:path andDic:nil andCallback:^(id obj) {
        NSLog(@"%@",obj);
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
