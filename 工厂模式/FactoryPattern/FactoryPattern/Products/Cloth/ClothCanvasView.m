 //
//  ClothCanvasView.m
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

- (id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        UIImage *backgroundImage = [UIImage imageNamed:@"cloth"];
        UIImageView *backgroundView = [[UIImageView alloc]initWithImage:backgroundImage];
        [self addSubview:backgroundView];
        NSLog(@"cloth");
    }
    return self;
}

@end
