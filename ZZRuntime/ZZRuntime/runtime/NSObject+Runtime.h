//
//  NSObject+Runtime.h
//  通讯录
//
//  Created by 周勇 on 15/7/6.
//  Copyright © 2015年 周勇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Runtime)

+ (instancetype)zz_objWithDict:(NSDictionary *)dict;

-(NSDictionary *)getAllPropertiesAndValues;

- (NSArray *)getAllProperties;

-(NSArray *)getAllMethods;

@end
