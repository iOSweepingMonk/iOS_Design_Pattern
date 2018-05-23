//
//  CanvasViewGenerator.h
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"

@interface CanvasViewGenerator : NSObject

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end
