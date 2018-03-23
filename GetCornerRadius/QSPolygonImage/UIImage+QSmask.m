//
//  UIImage+QSmask.m
//  GetCornerRadius
//
//  Created by cals on 2018/3/23.
//  Copyright © 2018年 刘青山. All rights reserved.
//

#import "UIImage+QSmask.h"

@implementation UIImage (QSmask)
+ (UIImage*)maskWithShowImage:(UIImage *)sImage maskImage:(UIImage*)mImage{
    CGSize size = sImage.size;
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    [sImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    [mImage drawInRect:CGRectMake(0, 0, size.width, size.width) blendMode:kCGBlendModeDestinationIn alpha:1];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}
@end
