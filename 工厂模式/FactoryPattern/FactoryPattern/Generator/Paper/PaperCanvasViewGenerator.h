//
//  PaperCanvasViewGenerator.h
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "PaperCanvasView.h"

@interface PaperCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end
