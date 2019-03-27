//
//  ViewController.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/4.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "ViewController.h"
#import "AController.h"
#import "BController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
//    [self.navigationController setToolbarHidden:NO animated:YES];
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];

    self.title = @"ViewController";
    
    self.button.bounds = CGRectMake(0, 0, 60, 30);
    self.button.center = self.view.center;
    [self.view addSubview:self.button];
    
    self.presentButton.bounds = CGRectMake(0, 0, 80, 30);
    self.presentButton.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
    [self.view addSubview:self.presentButton];
}

- (void)buttonClick:(UIButton *)button {
    AController *acontroller = [[AController alloc] init];
    [[AppDelegate sharedAppDelegate] pushViewController:acontroller withBackTitle:@"回去"];
}

- (void)presentButtonClick:(UIButton *)button {
    BController *bcontroller = [[BController alloc] init];
    [[AppDelegate sharedAppDelegate] presentViewController:bcontroller animated:YES completion:nil];
}

#pragma mark - Setters and getters

- (UIButton *)presentButton {
    if (!_presentButton) {
        _presentButton = [[UIButton alloc] init];
        [_presentButton setTitle:@"present" forState:UIControlStateNormal];
        [_presentButton setBackgroundColor:[UIColor grayColor]];
        [_presentButton addTarget:self action:@selector(presentButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _presentButton;
}

- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] init];
        [_button setTitle:@"push" forState:UIControlStateNormal];
        [_button setBackgroundColor:[UIColor grayColor]];
        [_button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
