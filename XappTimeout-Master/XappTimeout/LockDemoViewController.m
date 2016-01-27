//
//  LockDemoViewController.m
//  XappTimeout-Master
//
//  Created by 薛永伟 on 16/1/27.
//  Copyright © 2016年 薛永伟. All rights reserved.
//

#import "LockDemoViewController.h"
#import "XappTimeout.h"

@interface LockDemoViewController ()

@end

@implementation LockDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onUnlockClick:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter]postNotification:[[NSNotification alloc]initWithName:XAPPTIMEOUTNOTI object:nil userInfo:nil]];
    [self dismissViewControllerAnimated:YES completion:nil];
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
