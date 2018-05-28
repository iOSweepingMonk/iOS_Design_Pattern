//
//  ViewController.m
//  Facade
//
//  Created by tiange on 2018/5/28.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "CabDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CabDriver *cabDriver = [[CabDriver alloc]init];
    [cabDriver driveToLocation:CGPointMake(100, 100)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
