//
//  QSButton.h
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/31.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QSTool : NSObject

+ (UIImage *)imageWithNoCeachImage:(NSString *)imageName;

+ (UIButton *)buttonWithFrame:(CGRect)frame imageName:(NSString *)image cornerRadius:(CGFloat)radius backgroundColor:(UIColor *)color;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame imageName:(NSString *)image cornerRadius:(CGFloat)radius backgroundColor:(UIColor *)color;

+ (UIImageView *)maskImageViewWithFrame:(CGRect)frame imageName:(NSString *)image maskImageName:(NSString *)mImage;
@end
