//
//  ViewController.m
//  Test
//
//  Created by Xenosxiny on 16/9/7.
//  Copyright © 2016年 Xenosxiny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) UIButton *button ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = self.button.frame ;
    frame.origin.x = 120 ;
    [self.view addSubview:self.button] ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



-(UIButton *)button{
    _button = [[UIButton alloc]init] ;
    _button.frame = CGRectMake(100, 100, 100, 100) ;
    _button.backgroundColor = [UIColor redColor] ;
    _button.titleLabel.text = @"chile" ;
    return _button ;
    
}
//-(void)clickMe:(UIButton*)sender{
//    NSLog(@"1") ;
//}
-(void)clickMe:(UIButton*)sender AndInt:(int)a{
    NSLog(@"1") ;
}


@end
