//
//  ViewController.m
//  Decorator
//
//  Created by tiange on 2018/6/4.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // load the original image
    UIImage *image = [UIImage imageNamed:@"Image.png"];
    // create a transformation
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0,
                                                                            image.size.height / 8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    // a true subclass approach
    id <ImageComponent> transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:image
                                                                                      transform:finalTransform];
    id <ImageComponent> finalImage = [[ImageShadowFilter alloc] initWithImageComponent:transformedImage];
    
    // create a new image view
    // with a filtered image
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:[self.view bounds]];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
