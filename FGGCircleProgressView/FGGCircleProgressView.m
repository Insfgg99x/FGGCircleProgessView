//
//  FGGCircleProgressView.m
//  FGGCircleProgressView
//
//  Created by 夏桂峰 on 15/8/5.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGCircleProgressView.h"

@implementation FGGCircleProgressView

//通过代码方式初始化
- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.progressColor=progressColor;
        //默认进度环宽度为5
        self.circleWidth=5.0;
    }
    return self;
}
//通过xib方式初始化
-(id)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super initWithCoder:aDecoder])
    {
        self.backgroundColor=[UIColor clearColor];
        self.circleWidth=2.5;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    CGFloat radius = MIN(rect.size.width * 0.5, rect.size.height * 0.5);
    
    
    // 进度环
    [self.progressColor set];
    CGContextMoveToPoint(ctx, xCenter, yCenter);
    CGContextAddLineToPoint(ctx, xCenter, 0);
    CGFloat to = - M_PI * 0.5 + self.progress * M_PI * 2 + 0.001; // 初始值
    CGContextAddArc(ctx, xCenter, yCenter, radius, - M_PI * 0.5, to, 0);
    CGContextClosePath(ctx);
    CGContextFillPath(ctx);
    
    // 遮罩
    [[UIColor whiteColor] set];
    CGFloat maskW = (radius - self.circleWidth) * 2;
    CGFloat maskH = maskW;
    CGFloat maskX = (rect.size.width - maskW) * 0.5;
    CGFloat maskY = (rect.size.height - maskH) * 0.5;
    CGContextAddEllipseInRect(ctx, CGRectMake(maskX, maskY, maskW, maskH));
    CGContextFillPath(ctx);
    
    
}

@end
