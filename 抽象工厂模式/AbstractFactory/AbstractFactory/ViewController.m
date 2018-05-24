//
//  ViewController.m
//  AbstractFactory
//
//  Created by tiange on 2018/5/24.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "BrandingFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BrandingFactory * factory = [BrandingFactory factory];
    
    //...
    UIView * view = [factory brandedView];
    //... put the view on a proper location in view
    
    //...
    UIButton * button = [factory brandedMainButton];
    //... put the button on a proper location in view
    
    //...
    UIToolbar * toolbar = [factory brandedToolbar];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
