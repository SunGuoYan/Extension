//
//  ViewController.m
//  Tools
//
//  Created by SunGuoYan on 17/2/13.
//  Copyright © 2017年 SunGuoYan. All rights reserved.
//

#import "ViewController.h"
#import "Extension.h"
#import "UIView+Frame.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageV=[UIImageView imageWithFrame:CGRectMake(10, 10, 100, 100) Image:@"sgy" BgColor:nil];
    [self.view addSubview:imageV];
    
    //这里延时给图片赋值的原因:imageV还没加载出来（需要时间），image_V就截屏了，黑色的窗口
    [self performSelector:@selector(getImage) withObject:nil afterDelay:4];
    
    UIImageView *image_V=[UIImageView imageWithFrame:CGRectMake(10, 120, 100, 100) Image:nil BgColor:[UIColor cyanColor]];
    image_V.tag=110;
    [self.view addSubview:image_V];
    
}
-(void)getImage{
    UIImageView *imageV=[self.view viewWithTag:110];
    UIImage *a=[UIImageView getCapturedScreenWithRect:[UIScreen mainScreen].bounds];
    imageV.image=a;
    [imageV setBorderWithColor:[UIColor blackColor] andWidth:3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
