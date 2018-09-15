//
//  ViewController.m
//  runtimeTest
//
//  Created by 刘泽 on 2018/9/15.
//  Copyright © 2018年 liuze. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+myTM.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *image = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    [self.view addSubview:image];
    image.pageNo = @"1";
   
    [image setBackgroundColor:[UIColor redColor]];
    [image addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *image2 = [[UIButton alloc]initWithFrame:CGRectMake(50, 150, 50, 50)];
    [self.view addSubview:image2];
    image2.pageNo = @"2";
    
    [image2 setBackgroundColor:[UIColor blueColor]];
    [image2 addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *image3 = [[UIButton alloc]initWithFrame:CGRectMake(50, 250, 50, 50)];
    [self.view addSubview:image3];    
    [image3 setBackgroundColor:[UIColor blackColor]];
    [image3 addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
}



-(void)add:(UIButton *)btn{
   
    NSLog(@"该按钮可点击");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
