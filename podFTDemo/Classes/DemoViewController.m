//
//  DemoViewController.m
//  FrameworkDemo
//
//  Created by 卓鑫钊 on 2020/4/17.
//  Copyright © 2020 Samil. All rights reserved.
//

#import "DemoViewController.h"
//#import "UIImage+QIImage.h"
#import "QIImage.h"
@interface DemoViewController ()


@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * imageView = [[UIImageView alloc]init];
    imageView.backgroundColor = [UIColor redColor];
    imageView.image = [QIImage QIImageNamed:@"Index_multiple_selected"];
    imageView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imageView];
}

@end
