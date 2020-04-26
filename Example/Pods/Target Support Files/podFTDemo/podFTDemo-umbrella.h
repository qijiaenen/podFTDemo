#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DemoViewController.h"
#import "NSString+Helper.h"
#import "QIImage.h"
#import "UIImage+QIImage.h"

FOUNDATION_EXPORT double podFTDemoVersionNumber;
FOUNDATION_EXPORT const unsigned char podFTDemoVersionString[];

