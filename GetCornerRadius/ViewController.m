//
//  ViewController.m
//  GetCornerRadius
//
//  Created by 刘青山 on 16/5/17.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+QStion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [[UIImage imageNamed:@"LaunghImage.png"] QS_cropSameImageToSize:CGSizeMake(100, 100)];
    image = [image QS_getCornerRadius:100];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setBackgroundImage:image forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
