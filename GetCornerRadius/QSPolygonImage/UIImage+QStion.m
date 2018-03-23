//
//  UIImage+QStion.m
//  zhsyd_ios
//
//  Created by 刘青山 on 16/5/17.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "UIImage+QStion.h"

@implementation UIImage (QStion)

- (UIImage *)QS_getCornerRadius:(CGFloat)c
{
    int w = self.size.width * self.scale;
    int h = self.size.height * self.scale;
    CGRect rect = CGRectMake(0, 0, w, h);
    //使用贝塞尔
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(w, h), false, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:c] addClip];
    [self drawInRect:rect];
    UIImage *ret = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return ret;
}

@end
