//
//  FirstViewController.m
//  MasonryLearn
//
//  Created by 綦 on 17/4/18.
//  Copyright © 2017年 PowesunHolding. All rights reserved.
//

#import "FirstViewController.h"
#import "Masonry.h"

#define Main_Spcing                 8.0
#define Main_StatusBarH             20.0
#define Main_TabbarH                49.0

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view3];
    
    UIView *view4 = [[UIView alloc] init];
    view4.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:view4];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(Main_Spcing);
        make.top.equalTo(self.view.mas_top).offset(Main_StatusBarH);
        make.right.equalTo(view2.mas_left).offset(-Main_Spcing);
        make.bottom.equalTo(view3.mas_top).offset(-Main_Spcing);
        make.width.equalTo(view2.mas_width);
        make.width.equalTo(view3.mas_width);
        make.width.equalTo(view4.mas_width);
        make.height.equalTo(view2.mas_height);
        make.height.equalTo(view3.mas_height);
        make.height.equalTo(view4.mas_height);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(Main_StatusBarH);
        make.right.equalTo(self.view.mas_right).offset(-Main_Spcing);
        make.bottom.equalTo(view4.mas_top).offset(-Main_Spcing);
    }];
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(Main_Spcing);
        make.right.equalTo(view4.mas_left).offset(-Main_Spcing);
        make.bottom.equalTo(self.view.mas_bottom).offset(-(Main_TabbarH + Main_Spcing));
    }];
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.mas_right).offset(-Main_Spcing);
        make.bottom.equalTo(self.view.mas_bottom).offset(-(Main_TabbarH + Main_Spcing));
    }];
}

@end
