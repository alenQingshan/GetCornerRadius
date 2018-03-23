//
//  QSButton.m
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/31.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "QSTool.h"
#import "UIImage+QStion.h"
@implementation QSTool

+ (UIButton *)buttonWithFrame:(CGRect)frame imageName:(NSString *)image cornerRadius:(CGFloat)radius backgroundColor:(UIColor *)color
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    if (radius && image) {
        [button setBackgroundImage:[[UIImage imageNamed:image] QS_getCornerRadius:radius] forState:UIControlStateNormal];
    }
    if (color) {
        button.backgroundColor = color;
    }
    return button;
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame imageName:(NSString *)image cornerRadius:(CGFloat)radius backgroundColor:(UIColor *)color
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    if (radius && image) {
        imageView.image = [[UIImage imageNamed:image] QS_getCornerRadius:radius];
    }
    if (color) {
        imageView.backgroundColor = color;
    }
    return imageView;
}

@end
