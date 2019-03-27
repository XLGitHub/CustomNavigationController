//
//  BController.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/12.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "BController.h"
#import "AppDelegate.h"

@interface BController ()

@end

@implementation BController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"B controller";
    self.view.backgroundColor = [UIColor cyanColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(onCancel)];
    
}

- (void)onCancel {
    [[AppDelegate sharedAppDelegate] dismissViewController:self animated:YES completion:^{
        NSLog(@"BController dismiss");
    }];
}
@end
