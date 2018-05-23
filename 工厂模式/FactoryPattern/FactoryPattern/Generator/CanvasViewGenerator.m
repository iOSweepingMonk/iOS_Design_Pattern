//
//  CanvasViewGenerator.m
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame
{
    return [[CanvasView alloc]initWithFrame:aFrame];
}

@end
