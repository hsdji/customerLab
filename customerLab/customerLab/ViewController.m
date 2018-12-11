//
//  ViewController.m
//  customerLab
//
//  Created by spf on 2018/12/11.
//  Copyright © 2018年 spf. All rights reserved.
//

#import "ViewController.h"
#import "PFHeader.h"
@interface ViewController ()

@end

@implementation ViewController
UILabel *lab;
UISlider *slider;
- (void)viewDidLoad {
    [super viewDidLoad];
    lab = [[UILabel alloc] init];
    NSString *testStr = @"这里就是一段测试文字，可以更具自己的需要填写数据,使用时间如果是多行展示，那么请设置numberOfLines为0,在调用获取size之前，请设置好lab的显示样式这里就是一段测试文字，可以更具自己的需要填写数据,使用时间如果是多行展示，那么请设置numberOfLines为0,在调用获取size之前，请设置好lab的显示样式这里就是一段测试文字，可以更具自己的需要填写数据,使用时间如果是多行展示，那么请设置numberOfLines为0,在调用获取size之前，请设置好lab的显示样式这里就是一段测试文字，可以更具自己的需要填写数据,使用时间如果是多行展示，那么请设置numberOfLines为0,在调用获取size之前，请设置好lab的显示样式";
    lab.backgroundColor = [UIColor redColor];
    lab.numberOfLines = 0;
    CGFloat maxLabWith = 120;
    lab.text = testStr;
    CGSize needSezi = [PFLabHelp autoSizeOfMultipleLineLabel:lab maxWith:maxLabWith];
    lab.frame = CGRectMake(20, 100, needSezi.width, needSezi.height);
    [self.view addSubview:lab];
    
    slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(20, 40, self.view.frame.size.width, 10);
    slider.minimumValue = 120;
    slider.maximumValue = self.view.frame.size.width;
    [slider addTarget:self action:@selector(changeLabMaxWith:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
}
-(void)changeLabMaxWith:(UISlider *)sender{
    CGSize needSezi = [PFLabHelp autoSizeOfMultipleLineLabel:lab maxWith:sender.value];
    lab.frame = CGRectMake(20, 100, needSezi.width, needSezi.height);
}


@end
