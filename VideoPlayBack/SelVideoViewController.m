//
//  AppDelegate.m
//  VideoPlayBack
//
//  Created by 曹记 on 2018/2/7.
//  Copyright © 2018年 曹记. All rights reserved.

#import "SelVideoViewController.h"
#import "SelVideoPlayer.h"
#import "SelPlayerConfiguration.h"
#import "AppDelegate.h"
#import <Masonry.h>

@interface SelVideoViewController ()

@property (nonatomic, strong) SelVideoPlayer *player;

@end

@implementation SelVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    if ([[UIDevice currentDevice].systemVersion floatValue] > 7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    SelPlayerConfiguration *configuration = [[SelPlayerConfiguration alloc]init];
    configuration.shouldAutoPlay = YES;     //自动播放
    configuration.supportedDoubleTap = YES;     //支持双击播放暂停
    configuration.shouldAutorotate = YES;   //自动旋转
    configuration.repeatPlay = YES;     //重复播放
    configuration.statusBarHideState = SelStatusBarHideStateFollowControls;     //设置状态栏隐藏
    configuration.sourceUrl = [NSURL URLWithString:@"http://120.25.226.186:32812/resources/videos/minion_02.mp4"];     //设置播放数据源
    configuration.videoGravity = SelVideoGravityResizeAspect;   //拉伸方式
    
    CGFloat width = self.view.frame.size.width;
    _player = [[SelVideoPlayer alloc]initWithFrame:CGRectMake(0, 100, width, 300) configuration:configuration];
    [self.view addSubview:_player];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [_player _deallocPlayer];
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
