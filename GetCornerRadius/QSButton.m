//
//  QSButton.m
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/31.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "QSButton.h"
#import "UIImage+QStion.h"
@implementation QSButton

+(UIButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image imageSize:(CGSize)size cornerRadius:(CGFloat)radius color:(UIColor *)col
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    if (image) {
        image = [image QS_cropSameImageToSize:size];
    }
    if (radius) {
        image = [image QS_getCornerRadius:radius];
    }
    if (col) {
        button.backgroundColor = col;
    }
    [button setBackgroundImage:image forState:UIControlStateNormal];
    return button;
}

@end
