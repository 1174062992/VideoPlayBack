//
//  AppDelegate.m
//  VideoPlayBack
//
//  Created by 曹记 on 2018/2/7.
//  Copyright © 2018年 曹记. All rights reserved.

#import "SelMainViewController.h"
#import "SelVideoViewController.h"

@interface SelMainViewController ()

@end

@implementation SelMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *play = [UIButton buttonWithType:UIButtonTypeCustom];
    play.center = self.view.center;
    play.bounds = CGRectMake(0, 0, 200, 70);
    [play setTitle:@"点击播放网络视频" forState:UIControlStateNormal];
    play.layer.cornerRadius =8;
    play.backgroundColor = [UIColor orangeColor];
    [play setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [play addTarget:self action:@selector(playAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:play];
}

- (void)playAction
{
    SelVideoViewController *videoVC = [[SelVideoViewController alloc]init];
    [self.navigationController pushViewController:videoVC animated:YES];
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
