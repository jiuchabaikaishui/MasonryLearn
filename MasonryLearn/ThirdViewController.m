//
//  ThirdViewController.m
//  MasonryLearn
//
//  Created by 綦 on 17/4/18.
//  Copyright © 2017年 PowesunHolding. All rights reserved.
//

#import "ThirdViewController.h"
#import "Masonry.h"

#define Main_Spcing                 8.0
#define Main_StatusBarH             20.0
#define Main_TabbarH                49.0

@interface ThirdViewController ()

@property (weak, nonatomic) UITextField *textField;

@end

@implementation ThirdViewController

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *textField = [[UITextField alloc] init];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:textField];
    self.textField = textField;
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(Main_Spcing);
        make.right.equalTo(self.view.mas_right).offset(-Main_Spcing);
        make.bottom.equalTo(self.view.mas_bottom).offset(-(Main_TabbarH + Main_Spcing));
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardChangedAction:) name:UIKeyboardWillChangeFrameNotification object:nil];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapAction:)];
    [self.view addGestureRecognizer:tap];
}

- (void)keyboardChangedAction:(NSNotification *)sender
{
    CGRect beginRect = [sender.userInfo[UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    CGRect endRect = [sender.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    CGFloat distance = beginRect.origin.y - endRect.origin.y;
    if (distance > 0) {
        [self.textField mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.view.mas_bottom).offset(-distance);
        }];
    }
    else
    {
        [self.textField mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.view.mas_bottom).offset(-(Main_TabbarH + Main_Spcing));
        }];
    }
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:[sender.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue]];
    [UIView setAnimationCurve:(UIViewAnimationCurve)sender.userInfo[UIKeyboardAnimationCurveUserInfoKey]];
    [self.view layoutIfNeeded];
    [UIView commitAnimations];
}

- (void)viewTapAction:(UITapGestureRecognizer *)sender
{
    [self.view endEditing:YES];
}

@end
