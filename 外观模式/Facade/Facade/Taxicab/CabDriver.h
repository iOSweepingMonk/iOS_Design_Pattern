//
//  CabDriver.h
//  Facade
//
//  Created by tiange on 2018/5/28.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Taximeter.h"
#import <UIKit/UIKit.h>

@interface CabDriver : NSObject

- (void) driveToLocation:(CGPoint) x;

@end
