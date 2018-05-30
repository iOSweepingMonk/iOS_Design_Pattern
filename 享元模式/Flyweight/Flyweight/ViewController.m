//
//  ViewController.m
//  Flyweight
//
//  Created by tiange on 2018/5/30.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "ExtrinsicFlowerState.h"
#import "FlyweightView.h"
#import "FlowerView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // construct a flower list
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc]
                                   initWithCapacity:500];
    
    for (int i = 0; i < 500 ; ++i)
    {
        // retrieve a shared instance
        // of a flower flyweight object
        // from a flower factory with a
        // random flower type
        FlowerType flowerType = arc4random() % kTotalNumberOfFlowerTypes;
        UIView *flowerView = [factory flowerViewWithType:flowerType];
//        UIView *flowerView = [[FlowerView alloc]
//           initWithImage:[UIImage imageNamed:@"zinnia.png"]];
        // set up a location and an area for the flower
        // to display onscreen
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
        CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;
        
        // assign attributes for a flower
        // to an extrinsic state object
        ExtrinsicFlowerState *extrinsicState = [[ExtrinsicFlowerState alloc]init];
        extrinsicState.flowerView = flowerView;
        extrinsicState.area = CGRectMake(x, y, size, size);
        
        // add an extrinsic flower state
        // to the flower list
        [flowerList addObject:extrinsicState];
    }
    
    // add the flower list to
    // this FlyweightView instance
    //xib中记得设置view为FlyweightView
    [(FlyweightView *)self.view setFlowerList:flowerList];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
