//
//  ViewController.m
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/17.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+QStion.h"
#import "QSTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //使用订制的image可以直接生成圆角,不必再使用layer.CornerRadius
    //这样使用的好处就是我们的cpu可以节省资源让原本不属于它的工作,交还给GPU来实现
    
    UIButton *button = [QSTool buttonWithFrame:CGRectMake((self.view.frame.size.width-100)/2, 200, 100, 100) imageName:@"LaunghImage.png" cornerRadius:100 backgroundColor:[UIColor grayColor]];
    [self.view addSubview:button];
    
    UIImageView *imageView = [QSTool imageViewWithFrame:CGRectMake((self.view.frame.size.width-100)/2, 310, 100, 100) imageName:@"LaunghImage2.png" cornerRadius:100 backgroundColor:[UIColor grayColor]];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
