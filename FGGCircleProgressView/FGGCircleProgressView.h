//
//  FGGCircleProgressView.h
//  FGGCircleProgressView
//
//  Created by 夏桂峰 on 15/8/5.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGGCircleProgressView : UIView

//进度
@property (nonatomic, assign) CGFloat progress;
//进度颜色
@property (nonatomic,strong)UIColor *progressColor;
//进度环宽度
@property(nonatomic,assign)CGFloat circleWidth;

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor;

@end
