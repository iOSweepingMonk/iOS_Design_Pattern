//
//  CabDriver.m
//  Facade
//
//  Created by tiange on 2018/5/28.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "CabDriver.h"

@implementation CabDriver

- (void) driveToLocation:(CGPoint) x
{
    // ...
    
    // set off the taximeter
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    // operate the vehicle
    // until location x is reached
    Car *car = [[Car alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    // ...
    
    // when it's reached location x
    // then stop the car and taximeter
    [car releaseAccelerator];
    [car pressBrakes];
    [meter stop];
    
    // ...
}

@end
