//
//  UIImageView+property.m
//  ZZ-Runtime-demo
//
//  Created by 周勇 on 2015/6/13.
//  Copyright © 2015年 zhouyong. All rights reserved.
//

#import "UIImageView+property.h"
#import <objc/runtime.h>

@implementation UIImageView (property)
static const char * rowheightkey;

-(void)setRowheight:(NSNumber *)rowheight
{
    objc_setAssociatedObject(self, rowheightkey, rowheight, OBJC_ASSOCIATION_ASSIGN);
    
}

-(NSNumber *)rowheight
{
    return objc_getAssociatedObject(self,rowheightkey);
}
@end
