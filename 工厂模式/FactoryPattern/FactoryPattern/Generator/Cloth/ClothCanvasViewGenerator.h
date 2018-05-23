//
//  ClothCanvasViewGenerator.h
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "ClothCanvasView.h"

@interface ClothCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end
