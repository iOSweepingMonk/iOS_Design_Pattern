//
//  ViewController.m
//  FactoryPattern
//
//  Created by tiange on 2018/5/23.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "PaperCanvasViewGenerator.h"
#import "ClothCanvasViewGenerator.h"

@interface ViewController ()

@property (nonatomic, strong) CanvasView *canvasView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CanvasViewGenerator *defaultGenerator = [[ClothCanvasViewGenerator alloc]init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
    
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator
{
    [self.canvasView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, 320, 436);
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    self.canvasView = aCanvasView;
    [self.view addSubview:self.canvasView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
