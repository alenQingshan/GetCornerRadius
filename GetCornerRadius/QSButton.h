//
//  QSButton.h
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/31.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QSButton : NSObject

+(UIButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image imageSize:(CGSize)size cornerRadius:(CGFloat)radius color:(UIColor *)col;

@end
