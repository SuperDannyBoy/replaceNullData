//
//  ViewController.m
//  空数据处理
//
//  Created by SuperDanny on 15/8/13.
//  Copyright © 2015年 SuperDanny. All rights reserved.
//

#import "ViewController.h"
#import "CheckTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dic = @{@"key" : @"", @"key2" : @"", @"key3" : @[@"1", @"2"], @"key4" : @{@"key1" : @"", @"key2" : @""}};
    NSString *json = @"{key = nil;key2 = null;key3 = (nil,2);key4 = {key1 = "";key2 = nil;};}";
    
    NSDictionary *dic1 = [CheckTool replaceNullData:dic];
    
    NSLog(@"%@", dic1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
