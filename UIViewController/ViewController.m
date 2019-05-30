//
//  ViewController.m
//  UIViewController
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//只加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad! 第一次加载视图");
}

//当视图控制器的视图即将显示时，调用此函数
//视图分为：1、显示前 2、正在处于显示状态 3、已经被隐藏
//参数：表示是否用动画切换显示
//每次视图显示时都要调用
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"视图即将显示");
}

//当视图已经显示到屏幕后的瞬间调用此函数
//参数：表示是否用动画切换显示
//当前状态已经显示到屏幕上了
- (void) viewDidAppear:(BOOL)animated{
    NSLog(@"视图已经显示到屏幕上");
}

//视图将消失，调用此函数
//参数：表示是否用动画切换后消失
//当前状态：视图还是显示在屏幕上的
- (void )viewWillDisappear:(BOOL)animated{
    NSLog(@"视图即将消失");
}

//当视图已经显示到屏幕后的瞬间调用此函数
//参数：表示是否用动画切换显示
//当前状态:当前视图控制器已经从屏幕上消失
- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"视图已经从屏幕上消失");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
