//
//  ViewController.m
//  MVVMDemo
//
//  Created by DevMan7 on 2019/5/21.
//  Copyright © 2019 apple. All rights reserved.
//

//
// ViewController.m
// DrawHeart
//
// Created by WQL on 16/3/1.
// Copyright © 2016年 WQL. All rights reserved.
//

#import "ViewController.h"
#import "HeartView.h"

NSInteger const heartWidth = 200;
NSInteger const heartHeight = 200;

@interface ViewController ()
{
    HeartView *heartView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    heartView = [[HeartView alloc]initWithFrame:CGRectMake((self.view.frame.size.width-heartWidth)/2, (self.view.frame.size.height-heartHeight)/2, heartWidth, heartHeight)];
    heartView.rate = 0.5;
    heartView.lineWidth = 1;
    heartView.strokeColor = [UIColor blackColor];
    heartView.fillColor = [UIColor redColor];
    heartView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:heartView];
    
    [self loadSlider];
}

- (void)loadSlider
{
    UISlider *valueSlider = [[UISlider alloc]initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, self.view.frame.size.height-150, 300, 50)];
    valueSlider.minimumValue = 0.0;
    valueSlider.maximumValue = 1.0;
    valueSlider.value = 0.5;
    [valueSlider addTarget:self action:@selector(valueChangedAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:valueSlider];
}

- (void)valueChangedAction:(UISlider*)slider
{
    heartView.rate = slider.value;
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
