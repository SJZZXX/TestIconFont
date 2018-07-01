//
//  ViewController.m
//  TestIconFont
//
//  Created by os on 2018/7/1.
//  Copyright © 2018年 os. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageVIew;

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UILabel *label2;

@property (weak, nonatomic) IBOutlet UIButton *button1;

@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageVIew.image = [UIImage iconWithInfo:TBIconInfoMake(@"\U0000e6b4",100,[UIColor redColor])];
    
    /*---------------------label------------------------------------------------*/
    /*label图片和文字一行显示*/
    self.label1.font = [UIFont fontWithName:@"iconfont" size:30];//字体的名字一定要是iconfont
    //self.label1.font = [UIFont systemFontOfSize:50];
    self.label1.text = @" 测试字体图片 \U0000e6b3";
    [self.label1 setTextColor:[UIColor blueColor]];
    
    /*图片和文字不在同一行*/
    self.label2.font = [UIFont fontWithName:@"iconfont" size:30];//字体的名字一定要是iconfont
    //配置上两个对应图标
    self.label2.text = @" hahha\n \U0000e6b2";
    self.label2.numberOfLines=0;
    //配置图标颜色
    [self.label2 setTextColor:[UIColor cyanColor]];
    
    //   /*---------------------button------------------------------------------------*///
    //    /*图片和文字在同一行 图片和文字分开设置
    [self.button1 setImage:[UIImage iconWithInfo:TBIconInfoMake(@"\U0000e6b0", 30, [UIColor yellowColor])] forState:UIControlStateNormal];
    [self.button1 setTitle:@"哈哈" forState:UIControlStateNormal];
    [self.button1 setTintColor:[UIColor orangeColor]];
    /*
     图片和文字在同一行 图片和文字一块设置
     [self.button setTitle:@"哈哈 \U0000e637" forState:UIControlStateNormal];
     self.button.titleLabel.font=[UIFont fontWithName:@"iconfont" size:19];
     
     */
    
    //    /*---------------------label------------------------------------------------*/
    
    
    //图片和文字不在同一行 图片和文字一块设置
    [self.button2 setTitle:@"\U0000e6b1 \n\n 哈哈" forState:UIControlStateNormal];//这样设置图片和文字会里的有点近可以通过设置行间距 或者多加一个\n 调整图片和文字的间距
    self.button2.titleLabel.numberOfLines=0;
    self.button2.titleLabel.textAlignment=NSTextAlignmentCenter;
    self.button2.titleLabel.font=[UIFont fontWithName:@"iconfont" size:19];
    [self.button2 setTintColor:[UIColor greenColor]];
    //    /*---------------------button------------------------------------------------*/
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
