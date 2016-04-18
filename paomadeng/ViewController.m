//
//  ViewController.m
//  paomadeng
//
//  Created by hou on 16/4/18.
//  Copyright © 2016年 hou. All rights reserved.
//

#import "ViewController.h"
#import "AMN_StatusViewControl.h"
//总运行时间
#define RUNTIME         400
//单条运行时间
#define EACHTIME        10
//每条间隔时间
#define INTERVALTIME    5

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置显示数据，也可数据库获得
    NSMutableArray *iAsgArray = [[NSMutableArray alloc] initWithObjects:@"懒人IOS代码库", @"www.lanrenios.com", @"后天大暴雨 风力4－6级 请关闭好门窗", nil];
    
    _statusView = [[AMN_StatusViewControl alloc] init];
    _statusView.msgArray = iAsgArray;
    [_statusView setBgImage:[UIImage imageNamed:@"status_bg"]];
    _statusView.runTime = RUNTIME;
    _statusView.eachTime = EACHTIME;
    _statusView.intervalTime = INTERVALTIME;
    [_statusView showStatusMessage];
    
    [self.view addSubview:_statusView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
