//
//  PaperCanvasView.m
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        UIImage *backgroundImage = [UIImage imageNamed:@"paper"];
        UIImageView *backgroundView = [[UIImageView alloc]initWithImage:backgroundImage];
        [self addSubview:backgroundView];
        NSLog(@"paper");
    }
    return self;
}

@end
