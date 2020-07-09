//
//  ViewController.m
//  SPButtonDemo
//
//  Created by bx on 7/9/20.
//  Copyright © 2020 bx. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ContentLayout.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *writeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setup];
}

- (void)setup {
    
    self.writeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.writeButton .frame = CGRectMake(100, 100, 70, 20);
    self.writeButton .titleLabel.font = [UIFont systemFontOfSize:14];
    self.writeButton .contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [self.writeButton  setImage:[UIImage imageNamed:@"editBlue"] forState:UIControlStateNormal];
    [self.writeButton  setTitle:@"写评论" forState:UIControlStateNormal];
    [self.writeButton  setTitleColor:[self colorWithRGB:0x0099ff] forState:UIControlStateNormal];
    [self.writeButton  setTitleColor:[self colorWithRGB:0x33383f] forState:UIControlStateHighlighted];
    [self.writeButton  addTarget:self action:@selector(changeEvent:) forControlEvents:UIControlEventTouchUpInside];

    ///自定义间隔
    [self.writeButton setImageLayout:UIButtonLayoutImageLeft space:8];
    [self.view addSubview:self.writeButton];

}


- (void)changeEvent:(UIButton *)sender {
    if (sender.selected) {
        sender.selected = NO;
        [self.writeButton setImageLayout:UIButtonLayoutImageLeft space:8];
    }else {
        sender.selected = YES;
        [self.writeButton setImageLayout:UIButtonLayoutImageRight space:8];
    }
}
#pragma mark -method
- (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}


@end
