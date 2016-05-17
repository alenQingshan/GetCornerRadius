//
//  UIImage+QStion.h
//  zhsyd_ios
//
//  Created by 刘青山 on 16/5/17.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QStion)
//等比缩放
- (UIImage *)QS_cropSameImageToSize:(CGSize)size;
//非等比缩放
- (UIImage *)QS_noSameImageToSize:(CGSize)size;
//圆角切割
- (UIImage *)QS_getCornerRadius:(CGFloat)cornerRadius;
@end
