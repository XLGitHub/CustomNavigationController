//
//  UIViewController+BackButtonHandler.h
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/12.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BackButtonHandlerProtocol <NSObject>

@optional
- (BOOL)navigationShouldPopOnBackButton;

@end

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end

@interface UINavigationController (ShouldPopOnBackButton)

@end

NS_ASSUME_NONNULL_END
