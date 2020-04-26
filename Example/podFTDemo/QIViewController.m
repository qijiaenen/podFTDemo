//
//  QIViewController.m
//  podFTDemo
//
//  Created by qijiaenen on 04/22/2020.
//  Copyright (c) 2020 qijiaenen. All rights reserved.
//

#import "QIViewController.h"
#import <DemoViewController.h>
@interface QIViewController ()

@end

@implementation QIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView * imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"Examplemultiple_choice_right"];
    imageView.userInteractionEnabled = YES;
    [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(actionClick)]];
    imageView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imageView];
}
- (void)actionClick{
    DemoViewController * vc = [[DemoViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
