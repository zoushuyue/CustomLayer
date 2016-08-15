//
//  ViewController.m
//  CustomLayer
//
//  Created by mac1 on 16/8/15.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import "ViewController.h"
#import "myLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //方法一
//    [self createLayer];
    //方法二
    [self createDelegateLayer];
    
}

//自定义layer方法一
- (void) createLayer {
    
    //创建自定义的layer
    myLayer *layer = [myLayer layer];
    //设置属性
    layer.backgroundColor = [UIColor brownColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 200, 150);
    layer.anchorPoint = CGPointZero;
    layer.cornerRadius = 20;
    layer.position = CGPointMake(100, 100);
    layer.shadowColor = [UIColor blackColor].CGColor;
    layer.shadowOffset = CGSizeMake(10, 20);
    layer.shadowOpacity = 0.6;
    
    //***必须调用d的方法
    [layer setNeedsDisplay];
    //添加layer
    [self.view.layer addSublayer:layer];
}


//方法二--使用代理
- (void) createDelegateLayer {
    
    CALayer *layer = [CALayer layer];
    //设置属性
    layer.backgroundColor = [UIColor brownColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 200, 150);
    layer.anchorPoint = CGPointZero;
    layer.cornerRadius = 20;
    layer.position = CGPointMake(100, 100);
    layer.shadowColor = [UIColor blackColor].CGColor;
    layer.shadowOffset = CGSizeMake(10, 20);
    layer.shadowOpacity = 0.6;
    
    //设置代理
    layer.delegate = self;
    //***必须调用d的方法
    [layer setNeedsDisplay];
    //添加layer
    [self.view.layer addSublayer:layer];
    
}

- (void) drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    //1.绘制图形
    //    画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 100, 100));
    //设置属性（颜色）
    //    [[UIColor yellowColor] set];
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    
    //2.渲染
    CGContextFillPath(ctx);
}

@end
