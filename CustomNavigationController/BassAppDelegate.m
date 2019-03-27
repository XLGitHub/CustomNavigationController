//
//  BassAppDelegate.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/21.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "BassAppDelegate.h"

@implementation BassAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    return YES;
}

+ (instancetype)sharedAppDelegate {
    return (BassAppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)configAppLaunch {
    
}

- (void)enterLoginUI {
    
}

- (void)enterMainUI {
    
}

- (UINavigationController *)navigationViewController {
    
    if ([self.window.rootViewController isKindOfClass:[UINavigationController class]]) {
        
        return (UINavigationController *)self.window.rootViewController;
        
    } else if ([self.window.rootViewController isKindOfClass:[UITabBarController class]]) {
        
        UIViewController *selectVC = [(UITabBarController *)(self.window.rootViewController) selectedViewController];
        
        if ([selectVC isKindOfClass:[UINavigationController class]]) {
            
            return (UINavigationController *)selectVC;
            
        }
        
    }
    
    return nil;
}

- (void)pushViewController:(UIViewController *)viewController withBackTitle:(NSString *)title {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = title;
    [self topViewController].navigationItem.backBarButtonItem = backItem;
    viewController.hidesBottomBarWhenPushed = YES;
    [[self navigationViewController] pushViewController:viewController animated:YES];
}

- (UIViewController *)topViewController {
    UINavigationController *nav = [self navigationViewController];
    return nav.topViewController;
}

- (void)pushViewController:(UIViewController *)viewController {
    viewController.hidesBottomBarWhenPushed = YES;
    [[self navigationViewController] pushViewController:viewController animated:YES];
}

- (UIViewController *)popViewController {
    return [[self navigationViewController] popViewControllerAnimated:YES];
}

- (NSArray *)popToRootViewController {
    return [[self navigationViewController] popToRootViewControllerAnimated:YES];
}

- (NSArray *)popToViewController:(UIViewController *)viewController {
    return [[self navigationViewController] popToViewController:viewController animated:YES];
}

- (void)presentViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion {
    
    UIViewController *top = [self topViewController];
    
    if (vc.navigationController == nil) {
        
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        [top presentViewController:nav animated:animated completion:completion];
        
    } else {
        
        [top presentViewController:vc animated:animated completion:completion];
        
    }
}

- (void)dismissViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion {
    
    if (vc.navigationController != [BassAppDelegate sharedAppDelegate].navigationViewController) {
        
        [vc dismissViewControllerAnimated:YES completion:nil];
        
    } else {
        
        [vc.navigationController popViewControllerAnimated:YES];
    }
}

@end
