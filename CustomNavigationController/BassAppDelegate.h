//
//  BassAppDelegate.h
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/21.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BassAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;

+ (instancetype)sharedAppDelegate;

- (void)configAppLaunch;

- (void)enterLoginUI;

- (void)enterMainUI;

- (UINavigationController *)navigationViewController;

- (UIViewController *)topViewController;

- (void)pushViewController:(UIViewController *)viewController;

- (void)pushViewController:(UIViewController *)viewController withBackTitle:(NSString *)title;

- (UIViewController *)popViewController;

- (NSArray *)popToRootViewController;

- (NSArray *)popToViewController:(UIViewController *)viewController;

- (void)presentViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;

- (void)dismissViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;

@end

NS_ASSUME_NONNULL_END
