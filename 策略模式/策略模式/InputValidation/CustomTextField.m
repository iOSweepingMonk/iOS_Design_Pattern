//
//  CustomTextField.m
//  Strategy
//
//  Created by Carlo Chung on 8/2/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL) validate
{
  NSError *error = nil;
  BOOL validationResult = [_inputValidator validateInput:self error:&error];
  if (!validationResult)
  {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                        message:[error localizedFailureReason]
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                              otherButtonTitles:nil];
    [alertView show];
  }
  return validationResult;
}

@end
