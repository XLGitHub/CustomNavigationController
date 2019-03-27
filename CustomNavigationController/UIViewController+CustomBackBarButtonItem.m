//
//  UIViewController+CustomBackBarButtonItem.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/5.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "UIViewController+CustomBackBarButtonItem.h"
#import "UIBarButtonItem+CustomText.h"
#import "objc/runtime.h"

static char CUSTOM_BACK_KEY;

@implementation UIViewController (CustomBackBarButtonItem)

- (void)setCustomBackBarButtonItem:(UIBarButtonItem *)customBackBarButtonItem {
    
    objc_setAssociatedObject(self, &CUSTOM_BACK_KEY, customBackBarButtonItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

- (UIBarButtonItem *)customBackBarButtonItem {
    
    UIBarButtonItem *returnButtonItem = (UIBarButtonItem *)objc_getAssociatedObject(self, &CUSTOM_BACK_KEY);
    
    if (!returnButtonItem) {
        returnButtonItem = [UIBarButtonItem defaultBackButtonItem];
    }
    
    return returnButtonItem;
}

@end
