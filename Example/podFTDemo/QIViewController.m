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
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    DemoViewController * vc = [[DemoViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
