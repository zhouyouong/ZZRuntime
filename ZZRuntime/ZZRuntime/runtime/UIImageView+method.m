//
//  UIImageView+method.m
//  ZZ-Runtime-demo
//
//  Created by 周勇 on 2015/6/13.
//  Copyright © 2015年 zhouyong. All rights reserved.
//

#import "UIImageView+method.h"
#import <objc/runtime.h>

@implementation UIImageView (method)


void  someMethod(id  self,SEL _cmd,NSString * para){

    NSLog(@"%s--%@",__FUNCTION__,para);
}


+(BOOL)resolveInstanceMethod:(SEL)sel{

    if (sel == @selector(someMethod:)) {
        /**
         *  动态添加方法
         *
         *  @param self cls:为哪个类添加方法
         *  @param sel  SEL:添加方法的方法编号（方法名）是什么
         *  @param IMP  IMP:方法实现
         *  @param const char * types方法类型
         *
         *  @return 返回是否添加成功
         */
        BOOL result = class_addMethod(self, sel, (IMP)someMethod, "v@:@");
        return  result;
    }
    return [super resolveInstanceMethod:sel];
}

@end
