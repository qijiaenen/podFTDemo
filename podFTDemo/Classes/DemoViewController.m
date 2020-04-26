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
#import <AFNetworking/AFNetworking.h>
@interface DemoViewController ()


@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView * imageView = [[UIImageView alloc]init];
    imageView.backgroundColor = [UIColor redColor];
    imageView.image = [QIImage QIImageNamed:@"Index_multiple_selected"];
    imageView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imageView];
    
    UILabel * titleLabel = [[UILabel alloc]init];
    __weak __typeof (&*titleLabel) weakLabel = titleLabel;
    [self getDate:^(NSString *result) {
        weakLabel.text = result;
    }];
    [self.view addSubview:titleLabel];
    titleLabel.frame = CGRectMake(100, 400, 200, 100);
}

- (void)getDate:(void(^)(NSString *result))complete{
    NSString * path = @"https://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=pod%20trunk%20push&fenlei=256&rsv_pq=cbddba7000136d3d&rsv_t=c89eNGM8VZwrg9HtV%2BSO9L0pe3eI3faM%2BXeqMLIKsMlg%2FF%2FmrBD50oWLiU0&rqlang=cn&rsv_enter=1&rsv_dl=ih_2&rsv_sug3=2&rsv_sug1=2&rsv_sug7=001&rsv_sug2=1&rsv_btype=i&rsp=2&rsv_sug9=es_2_1&rsv_sug4=8199&rsv_sug=9";
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
    [securityPolicy setAllowInvalidCertificates:YES];
    securityPolicy.validatesDomainName = NO;
    [manager setSecurityPolicy:securityPolicy];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/xml", @"text/xml",@"application/json", @"text/json",@"text/javascript",@"text/html",@"text/plain",nil];
    //设置请求超时
    manager.requestSerializer.timeoutInterval=30;
    NSURLSessionDataTask *currentOperation = [manager GET:path parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dic);
        complete(@"成功");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(@"失败");
    }];
}


@end
