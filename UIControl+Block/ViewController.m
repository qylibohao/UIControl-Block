//
//  ViewController.m
//  UIControl+Block
//
//  Created by libohao on 16/10/13.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+Block/UIControl+Block.h"

@interface ViewController ()<UIAlertViewDelegate>

@property (nonatomic, strong) UIButton* testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.testButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIButton *)testButton {
    if (!_testButton) {
        typeof(self) __weak weakSelf = self;
        _testButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 60, 30)];
        [_testButton setTitle:@"button" forState:UIControlStateNormal];
        _testButton.backgroundColor = [UIColor redColor];
        
        [_testButton addActionforControlEvents:UIControlEventTouchUpInside Completion:^{
           UIAlertView* alertView = [[UIAlertView alloc]initWithTitle:@"test" message:@"button clicked" delegate:weakSelf cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
            [alertView show];
        }];
    }
    return _testButton;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    
}

@end
