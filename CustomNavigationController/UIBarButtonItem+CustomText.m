//
//  UIBarButtonItem+CustomText.m
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/5.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import "UIBarButtonItem+CustomText.h"

@implementation UIBarButtonItem (CustomText)

+ (UIBarButtonItem *)barItemWithText:(NSString *)text target:(id)target action:(SEL)action {
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:text style:UIBarButtonItemStylePlain target:target action:action];
 
    return backItem;
}

+ (UIBarButtonItem *)defaultBackButtonItem {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"back111" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    return backItem;
}

@end
