//
//  ViewController.m
//  Label_attrabuted
//
//  Created by Charles Wang on 16/3/10.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 120)];
    label.backgroundColor = [UIColor lightGrayColor];
    NSString *text = @"123456789011";
    NSMutableAttributedString *string = [self setTextColor:[UIColor redColor] range:NSMakeRange(0, text.length - 5) text:text];
    label.attributedText = string;
    [self.view addSubview:label];
}

- (NSMutableAttributedString *)setTextColor:(UIColor *)textColor range:(NSRange)range text:(NSString *)text
{
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:text];
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithAttributedString:string];
    [str addAttribute:NSForegroundColorAttributeName
                value:textColor
                range:range];
    return str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
