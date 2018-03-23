//
//  UIImage+QSmask.h
//  GetCornerRadius
//
//  Created by cals on 2018/3/23.
//  Copyright © 2018年 刘青山. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QSmask)
+ (UIImage*)maskWithShowImage:(UIImage *)sImage maskImage:(UIImage*)mImage;
@end
