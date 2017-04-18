//
//  SecondViewController.m
//  MasonryLearn
//
//  Created by 綦 on 17/4/18.
//  Copyright © 2017年 PowesunHolding. All rights reserved.
//

#import "SecondViewController.h"
#import "Masonry.h"

#define Main_Spcing                 8.0
#define Main_StatusBarH             20.0
#define Main_TabbarH                49.0

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *red1 = [[UIView alloc] init];
    red1.backgroundColor = [UIColor redColor];
    [self.view addSubview:red1];
    
    UIView *red2 = [[UIView alloc] init];
    red2.backgroundColor = [UIColor redColor];
    [self.view addSubview:red2];
    
    UIView *gray1 = [[UIView alloc] init];
    gray1.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:gray1];
    
    UIView *gray2 = [[UIView alloc] init];
    gray2.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:gray2];
    
    UIView *gray3 = [[UIView alloc] init];
    gray3.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:gray3];
    
    [gray1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(Main_Spcing);
        make.right.equalTo(red1.mas_left).offset(-Main_Spcing);
        make.bottom.equalTo(self.view.mas_bottom).offset(-(Main_TabbarH + Main_Spcing));
        make.height.equalTo(@50);
        make.height.equalTo(@[gray2, gray3]);
        make.width.equalTo(@[gray2, gray3]);
        make.bottom.equalTo(@[red1, gray2, red2, gray3]);
    }];
    [red1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(gray2.mas_left).offset(-Main_Spcing);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
        make.width.equalTo(red2);
        make.height.equalTo(red2);
    }];
    [gray2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(red2.mas_left).offset(-Main_Spcing);
    }];
    [red2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(gray3.mas_left).offset(-Main_Spcing);
    }];
    [gray3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.mas_right).offset(-Main_Spcing);
    }];
}

@end
