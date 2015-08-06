//
//  FGGCircleProgressView.h
//  FGGCircleProgressView
//
//  Created by 夏桂峰 on 15/8/5.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGGCircleProgressView : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic,strong)UIColor *progressColor;

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor;

@end
