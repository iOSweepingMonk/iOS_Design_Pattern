//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by tiange on 2018/6/5.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "Avatar.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // create a new avatar
    AttackHandler *avatar = [[Avatar alloc] init];
    
    // put it in metal armor
    AttackHandler *metalArmoredAvatar = [[MetalArmor alloc] init];
    [metalArmoredAvatar setNextAttackHandler:avatar];
    
    // then add a crytal shield
    // to the avatar who's in
    // a metal armor
    AttackHandler *superAvatar = [[CrystalShield alloc] init];
    [superAvatar setNextAttackHandler:metalArmoredAvatar];
    
    // ... some other actions
    
    // attack the avatar with
    // a sword
    Attack *swordAttack = [[SwordAttack alloc] init];
    [superAvatar handleAttack:swordAttack];
    
    // then attack the avatar with
    // magic fire
    Attack *magicFireAttack = [[MagicFireAttack alloc] init];
    [superAvatar handleAttack:magicFireAttack];
    
    // now there is a new attack
    // with lightning...
    Attack *lightningAttack = [[LightningAttack alloc] init];
    [superAvatar handleAttack:lightningAttack];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
