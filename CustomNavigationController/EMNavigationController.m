//
//  EMNavigationController.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/5.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "EMNavigationController.h"
#import "UIBarButtonItem+CustomText.h"
#import "UIViewController+CustomBackBarButtonItem.h"

@implementation EMNavigationController

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    UIBarButtonItem *customBarButtonItem = [self.topViewController customBackBarButtonItem];
    customBarButtonItem.target = self;
    customBarButtonItem.action = @selector(validData);
    viewController.navigationItem.leftBarButtonItem = customBarButtonItem;
    [super pushViewController:viewController animated:animated];
    
}

- (void)validData {
    
    if (self.validBlock == nil) {
        [self goBack];
    } else {
        BOOL isValid = self.validBlock();
        
        if (isValid) {
            NSLog(@"验证通过，返回上一页");
            [self goBack];
        } else {
            NSLog(@"验证未通过，无法返回上一页");
        }
        
    }
    
}

- (void)goBack {
    [self popViewControllerAnimated:YES];
}

@end
