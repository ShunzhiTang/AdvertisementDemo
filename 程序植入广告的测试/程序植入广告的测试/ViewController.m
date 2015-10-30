//
//  ViewController.m
//  程序植入广告的测试
//
//  Created by Tsz on 15/10/30.
//  Copyright © 2015年 Tsz. All rights reserved.

#import "ViewController.h"
#import <iAd/iAd.h>
@interface ViewController ()<ADBannerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
}

#pragma mark 实现广告的 代理方法
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"广告加载失败");
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{
    NSLog(@"查看完成");
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    NSLog(@"广告加载完成");
    
}

- (void)bannerViewWillLoadAd:(ADBannerView *)banner{
    NSLog(@"广告开始加载");
}
@end
