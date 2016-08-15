//
//  myLayer.m
//  CustomLayer
//
//  Created by mac1 on 16/8/15.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import "myLayer.h"

@implementation myLayer

//重写该方法，在该方法内绘制图形
- (void) drawInContext:(CGContextRef)ctx {
    
    //1.绘制图形
    //画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 100, 100));
    //设置属性（颜色）
//    [[UIColor yellowColor] set];
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    
    //2.渲染
    CGContextFillPath(ctx);
}
@end
