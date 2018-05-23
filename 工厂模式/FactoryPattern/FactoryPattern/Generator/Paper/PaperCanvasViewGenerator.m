//
//  PaperCanvasViewGenerator.m
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame
{
    return [[PaperCanvasView alloc]initWithFrame:aFrame];
}

@end
