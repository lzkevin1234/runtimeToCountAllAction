//
//  UIButton+myTM.m
//  runtimeTest
//
//  Created by 刘泽 on 2018/9/15.
//  Copyright © 2018年 liuze. All rights reserved.
//

#import "UIButton+myTM.h"
#import <objc/runtime.h>
static NSString *namekey = @"name";

@implementation UIButton (myTM)

- (void)setPageNo:(NSString *)pageNo {
    objc_setAssociatedObject(self, &namekey, pageNo, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)pageNo {
     return objc_getAssociatedObject(self, &namekey);
}
@end
