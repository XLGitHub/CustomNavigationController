//
//  EMNavigationController.h
//  CustomBackItemButton
//
//  Created by wuxl on 2019/3/5.
//  Copyright © 2019年 wuxl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EMNavigationController : UINavigationController

@property (nonatomic, copy) BOOL (^validBlock) (void);

- (void)goBack;

@end

NS_ASSUME_NONNULL_END
