//
//  ViewController.m
//  MasonryLearn
//
//  Created by 綦 on 17/4/18.
//  Copyright © 2017年 PowesunHolding. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

#define Main_Spcing             8.0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(Main_Spcing);
        make.top.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-Main_Spcing);
        make.bottom.equalTo(self.view).offset(-Main_Spcing);
    }];
}

@end
