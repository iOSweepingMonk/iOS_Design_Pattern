//
//  ViewController.m
//  策略模式
//
//  Created by tiange on 2018/5/16.
//  Copyright © 2018年 tiange. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "AlphaInputValidator.h"
#import "NumericInputValidator.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong)  CustomTextField *numericTextField;
@property (nonatomic, strong)  CustomTextField *alphaTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    _numericTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    _numericTextField.backgroundColor = [UIColor blueColor];
    _numericTextField.delegate = self;
    _numericTextField.inputValidator = [[NumericInputValidator alloc]init];
    _numericTextField.placeholder = @"_numericTextField";
    _numericTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _numericTextField.font = [UIFont systemFontOfSize:16.f];
    _numericTextField.textColor = [UIColor whiteColor];
    
    [self.view addSubview:_numericTextField];
    _alphaTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    _alphaTextField.inputValidator = [[AlphaInputValidator alloc]init];
    _alphaTextField.backgroundColor = [UIColor blueColor];
    _alphaTextField.placeholder = @"_alphaTextField";
    _alphaTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _alphaTextField.font = [UIFont systemFontOfSize:16.f];
    _alphaTextField.delegate = self;
    _alphaTextField.textColor = [UIColor whiteColor];
    [self.view addSubview:_alphaTextField];
}

#pragma mark -
#pragma mark UITextFieldDelegate methods

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[CustomTextField class]])
    {
        [(CustomTextField*)textField validate];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
