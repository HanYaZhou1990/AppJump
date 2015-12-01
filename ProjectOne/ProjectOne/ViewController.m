//
//  ViewController.m
//  ProjectOne
//
//  Created by 韩亚周 on 15/12/1.
//  Copyright (c) 2015年 韩亚周. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 300, 160, 60);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"JUMP" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)jump:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"ProjectTwo://com.yy.projecttwo/test?name=YY&phone=15093296683"]];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"message" message:[NSString stringWithFormat:@"%@", url] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
