//
//  ViewController.m
//  JSPatchDemo
//
//  Created by lucien on 16/7/18.
//  Copyright © 2016年 lucien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//异步获取的时候,拉JS代码可能会在setInitView方法之后,所以不会被覆盖.
//用如下方法解决此问题.
    [self performSelector:@selector(setInitView) withObject:nil afterDelay:3];
    
    


}
- (void)setInitView {
    UIView *viewOne=[[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100)];
    viewOne.backgroundColor=[UIColor greenColor];
    [self.view addSubview:viewOne];
    
    UILabel *labelOne=[[UILabel alloc]initWithFrame:CGRectMake(50, 50, 300, 20)];
    labelOne.text=@"我是一个OC原生的label,红色的";
    labelOne.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:labelOne];
    
    
 

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
