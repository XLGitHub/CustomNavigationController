//
//  AController.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/4.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "AController.h"
#import "CController.h"
#import "UIViewController+BackButtonHandler.h"
#import "AppDelegate.h"

@interface AController ()

@end

@implementation AController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.title = @"A controller";
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一个" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
}

- (void)next {
    CController *cController = [[CController alloc] init];
    [[AppDelegate sharedAppDelegate] pushViewController:cController withBackTitle:@"Back-A"];
}

- (BOOL)navigationShouldPopOnBackButton {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请进行操作" preferredStyle:UIAlertControllerStyleAlert];

    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击取消");
    }]];

    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击确定");
        [[AppDelegate sharedAppDelegate] popViewController];
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
    return NO;
}

@end
