//
//  ViewController.m
//  环形进度条Demo
//
//  Created by 夏桂峰 on 15/8/5.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "FGGCircleProgressView.h"

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"圆形进度条";
    self.view.backgroundColor=[UIColor whiteColor];
    //添加进度条并设置进度
    [self setProgressViewWithProgress:0.8868];
    
}
-(void)setProgressViewWithProgress:(float)progress
{
    //frame
    CGRect frame=CGRectMake(kWidth/2-100, kHeight/2-100, 200, 200);
    //底色
    UIColor *backColor=[UIColor colorWithRed:41/255.0f green:0/255.0f blue:181/255.0f alpha:0.15f];
    //底色的圆圈
    FGGCircleProgressView *backProgressView=[[FGGCircleProgressView alloc]initWithFrame:frame andProgressColor:backColor];
    //设置进度环底衬宽度为2
    backProgressView.circleWidth=2.0;
    backProgressView.progress=1.0;
    [self.view addSubview:backProgressView];
    
    //进度圆弧
    FGGCircleProgressView *progressView=[[FGGCircleProgressView alloc] initWithFrame:frame andProgressColor:[UIColor redColor]];
    //进度环的宽度
    progressView.circleWidth=2.0;
    progressView.progress=progress;
    [self.view addSubview:progressView];
    
    //进度值
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 120, 40)];
    label.center=progressView.center;
    label.textAlignment=NSTextAlignmentCenter;
    label.text=[NSString stringWithFormat:@"%.2f%%",progress*100];
    label.font=[UIFont systemFontOfSize:32];
    [self.view addSubview:label];
}
@end
