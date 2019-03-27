//
//  UIBarButtonItem+CustomText.h
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/5.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (CustomText)

+ (UIBarButtonItem *)barItemWithText:(NSString *)text target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)defaultBackButtonItem;

@end

NS_ASSUME_NONNULL_END
