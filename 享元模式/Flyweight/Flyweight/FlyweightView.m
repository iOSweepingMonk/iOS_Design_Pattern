//
//  FlyweightView.m
//  Flyweight
//
//  Created by Carlo Chung on 11/29/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "FlyweightView.h"
#import "ExtrinsicFlowerState.h"

@implementation FlyweightView

- (void)drawRect:(CGRect)rect 
{
    // Drawing code
    for (ExtrinsicFlowerState *stateValue in self.flowerList)
    {
        UIView *flowerView = stateValue.flowerView;
        CGRect area = stateValue.area;
        
        [flowerView drawRect:area];
    }
}

@end
