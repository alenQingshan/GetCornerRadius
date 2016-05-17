//
//  UIImage+QStion.m
//  zhsyd_ios
//
//  Created by 刘青山 on 16/5/17.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "UIImage+QStion.h"

@implementation UIImage (QStion)
// 等比缩放
- (UIImage *)QS_cropSameImageToSize:(CGSize)size
{
    CGFloat scale =  [UIScreen mainScreen].scale;
    UIGraphicsBeginImageContextWithOptions(size, YES, scale);
    CGSize aspectFitSize = CGSizeZero;
    if (self.size.width != 0 && self.size.height != 0)
    {
        CGFloat rateWidth = size.width / self.size.width;
        CGFloat rateHeight = size.height / self.size.height;
        CGFloat rate = MIN(rateHeight, rateWidth);
        aspectFitSize = CGSizeMake(self.size.width * rate, self.size.height * rate);
    }
    [self drawInRect:CGRectMake(0, 0, aspectFitSize.width, aspectFitSize.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

// 非等比缩放
- (UIImage *)QS_noSameImageToSize:(CGSize)size
{
    CGFloat scale =  [UIScreen mainScreen].scale;
    UIGraphicsBeginImageContextWithOptions(size, YES, scale);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

//圆角切割
- (UIImage *)QS_getCornerRadius:(CGFloat)cornerRadius
{
    CGFloat scale = [UIScreen mainScreen].scale;
    UIGraphicsBeginImageContextWithOptions(self.size, NO, scale);
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    CGContextAddPath(c, path.CGPath);
    CGContextClip(c);
    [self drawInRect:rect];
    CGContextDrawPath(c, kCGPathFillStroke);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
