//
//  ViewController.m
//  模板模式
//
//  Created by tiange on 2018/5/17.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "AnySandwich.h"
#import "ReubenSandwich.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AnySandwich * sandwich = [[ReubenSandwich alloc] init];
    [sandwich make];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
