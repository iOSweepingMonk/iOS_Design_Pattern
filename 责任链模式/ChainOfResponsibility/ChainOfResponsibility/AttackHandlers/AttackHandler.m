//
//  Entity.m
//  ChainOfResponsibility
//
//  Created by Carlo Chung on 11/28/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

- (void) handleAttack:(Attack *)attack
{
  [self.nextAttackHandler handleAttack:attack];
}

@end
