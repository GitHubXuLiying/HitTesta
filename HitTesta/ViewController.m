//
//  ViewController.m
//  HitTesta
//
//  Created by xuliying on 2017/08/13.
//  Copyright © 2017年 xly. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+HitControl.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyView *mv = [[MyView alloc] initWithFrame:self.view.bounds];
    mv.backgroundColor = [UIColor redColor];
    [self.view addSubview:mv];

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 100, 300);
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    mv.btn = btn;
    //btn.hitFrame = CGRectMake(-50, -50, view.bounds.size.width, view.bounds.size.height);//点击整个灰色View响应事假
    btn.hitFrame = CGRectMake(-150, -150, self.view.frame.size.width, self.view.frame.size.height);//点击整个红色View响应事件
    [view addSubview:btn];

    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btnClick{
    NSLog(@"click");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
