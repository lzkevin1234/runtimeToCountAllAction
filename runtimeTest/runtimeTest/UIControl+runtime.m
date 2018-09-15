//
//  UIControl+runtime.m
//  runtimeTest
//
//  Created by 刘泽 on 2018/9/15.
//  Copyright © 2018年 liuze. All rights reserved.
//

#import "UIControl+runtime.h"
#import <objc/runtime.h>
#import "UIButton+myTM.h"
@implementation UIControl (runtime)
+(void)load {

        Method m1 = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
        Method m2 = class_getInstanceMethod(self, @selector(mySendAction:to:forEvent:));
        method_exchangeImplementations(m1, m2);
}

- (void)mySendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
  
        if ([self isKindOfClass:[UIButton class]]) {
         
            UIButton *b = (UIButton *)self;
            //这里简写了，实际上肯定要根据拿到的pageNo作为key去取对应的value，就可以得到对应的按钮是否可点击了
            if ([b.pageNo isEqualToString:@"1"]||!b.pageNo) {
                 [self mySendAction:action to:target forEvent:event];
                //这里还可以加入按钮点击统计事件,这里我就不写了
            } else {
                NSLog(@"该按钮不可点击");
                return;
            }
        } else {
        [self mySendAction:action to:target forEvent:event];
     }
 
    
}
@end
