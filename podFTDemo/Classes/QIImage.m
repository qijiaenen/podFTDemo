//
//  QIImage.m
//  podFTDemo_Example
//
//  Created by 卓鑫钊 on 2020/4/26.
//  Copyright © 2020 qijiaenen. All rights reserved.
//

#import "QIImage.h"

@implementation QIImage
+ (UIImage *)QIImageNamed:(NSString *)name {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"Images" withExtension:@"bundle"];
    if (url) {
        NSBundle *targetBundle = [NSBundle bundleWithURL:url];
        UIImage *image = [UIImage imageNamed:name
                                    inBundle:targetBundle
               compatibleWithTraitCollection:nil];
        return image;
    }else{
        return [UIImage imageNamed:name];
    }
}
@end
