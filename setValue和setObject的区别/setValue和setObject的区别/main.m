//
//  main.m
//  setValue和setObject的区别
//
//  Created by wangjie on 2018/4/18.
//  Copyright © 2018年 I just want to be a quiet and handsome man. All rights reserved.
/*
 1.setobject 中的key和value可以为除了nil外的任何对象
 
 2.setValue 中的key只能为字符串 value可以为nil也可以为空对象[NSNull null]
 
 3.setValue和setObject 的key 都不可以为nil
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        //setObject和setvalue的区别
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableArray *array = [NSMutableArray array];
        [array insertObject:@"1" atIndex:0];
        [array insertObject:@"2" atIndex:1];
        
        [dic setObject:[NSNull null] forKey:@"haha"];
        [dic setObject:[NSNull null] forKey:array];
        [dic setObject:[NSNull null] forKey:[NSNull null]];
        [dic setObject:@1 forKey:@""];
        [dic setObject:@"" forKey:@1];
//        [dic setObject:nil forKey:@""];
//        [dic setObject:@"" forKey:nil];
        NSLog(@"dic:%@",dic);
        //setobject中的key和value可以为除了nil外的任何对象
        NSLog(@"*****************");
        
        [dic removeAllObjects];
        NSLog(@"dic:%@",dic);
        
        [dic setValue:[NSNull null] forKey:@"haha"];
//        [dic setValue:[NSNull null] forKey:array];
//        [dic setValue:[NSNull null] forKey:[NSNull null]];
        [dic setValue:@1 forKey:@""];
        //[dic setValue:@"" forKey:@1];
        [dic setValue:nil forKey:@""];
        //[dic setValue:@"" forKey:nil];
        [dic setValue:@"" forKey:@"hehe"];
        [dic setValue:array forKey:@""];
        NSLog(@"dic2:%@",dic);
        //setValue中的KEY只能为字符串 value可以为nil也可以为空对象[NSNull null]
        
       


        
        
    }
    return 0;
}
