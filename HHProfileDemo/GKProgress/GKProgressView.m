//
//  GKProgressView.m
//  GKProgress
//
//  Created by APPLE on 15/12/11.
//  Copyright © 2015年 HHDD. All rights reserved.
//

#import "GKProgressView.h"

@implementation GKProgressView

- (void)drawRect:(CGRect)rect {
    
    CGFloat textH = 20;
    CGFloat textW = 25;
    CGFloat viewW = rect.size.width;
    CGFloat viewH = rect.size.height;
    
    CGFloat textX = (viewW - textW) * 0.5;
    CGFloat textY = (viewH - textH) * 0.5;
    
    //画文字
    NSString *text = [NSString stringWithFormat:@"%.0f",self.progress * 100];
    [text drawInRect:CGRectMake(textX, textY, textW, textH) withAttributes:nil];
    
    //画最外面的圆
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 239/255.0f, 239/255.0f, 239/255.0f, 1);
    CGFloat radius1 = (viewW - 8) * 0.5;
    CGContextAddArc(context, viewW * 0.5, viewH * 0.5, radius1, 0, 2 * M_PI, 0);
    CGContextStrokePath(context);
    
    //画里面的圆
    CGContextSetRGBStrokeColor(context, 239/255.0f, 239/255.0f, 239/255.0f, 1);
    CGFloat radius = (viewW - 28) * 0.5;
    CGContextAddArc(context, viewW * 0.5, viewH * 0.5, radius, 0, 2 * M_PI, 0);
    CGContextStrokePath(context);
    
    //画弧
    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1);
    CGFloat endAngle = self.progress * 2 * M_PI - M_PI_2;
    CGContextAddArc(context, viewW * 0.5, viewH * 0.5, radius, - M_PI_2, endAngle, 0);
    CGContextStrokePath(context);
    
}

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    
    //重绘
    [self setNeedsDisplay];
}

@end
