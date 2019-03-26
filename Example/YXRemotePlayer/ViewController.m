//
//  ViewController.m
//  播放器
//
//  Created by 小码哥 on 2017/1/14.
//  Copyright © 2017年 YX. All rights reserved.
//

#import "ViewController.h"
#import "YXRemotePlayer.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalTimeLabel;

@property (weak, nonatomic) IBOutlet UIProgressView *loadPV;

@property (nonatomic, weak) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UISlider *playSlider;

@property (weak, nonatomic) IBOutlet UIButton *mutedBtn;
@property (weak, nonatomic) IBOutlet UISlider *volumeSlider;


@end

@implementation ViewController

- (NSTimer *)timer {
    if (!_timer) {
        NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
        _timer = timer;
    }
    return _timer;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self timer];
}


- (void)update {
    
    
    // 68
    // 01:08
    // 设计数据模型的
    // 弱业务逻辑存放位置的问题
    self.playTimeLabel.text =  [YXRemotePlayer shareInstance].currentTimeFormat;
    self.totalTimeLabel.text = [YXRemotePlayer shareInstance].totalTimeFormat;
    
    self.playSlider.value = [YXRemotePlayer shareInstance].progress;
    
    self.volumeSlider.value = [YXRemotePlayer shareInstance].volume;
    
    self.loadPV.progress = [YXRemotePlayer shareInstance].loadDataProgress;
    
    self.mutedBtn.selected = [YXRemotePlayer shareInstance].muted;
    
    
}


- (IBAction)play:(id)sender {
    //替换url来测试
    NSURL *url = [NSURL URLWithString:@"http://192.168.31.218/14945107.mp3"];
    [[YXRemotePlayer shareInstance] playWithURL:url isCache:YES];
    
}
- (IBAction)pause:(id)sender {
    [[YXRemotePlayer shareInstance] pause];
}

- (IBAction)resume:(id)sender {
    [[YXRemotePlayer shareInstance] resume];
}
- (IBAction)kuaijin:(id)sender {
    [[YXRemotePlayer shareInstance] seekWithTimeDiffer:15];
}
- (IBAction)progress:(UISlider *)sender {
    [[YXRemotePlayer shareInstance] seekWithProgress:sender.value];
}
- (IBAction)rate:(id)sender {
    [[YXRemotePlayer shareInstance] setRate:2];
}
- (IBAction)muted:(UIButton *)sender {
    sender.selected = !sender.selected;
    [[YXRemotePlayer shareInstance] setMuted:sender.selected];
}
- (IBAction)volume:(UISlider *)sender {
    [[YXRemotePlayer shareInstance] setVolume:sender.value];
}

@end
