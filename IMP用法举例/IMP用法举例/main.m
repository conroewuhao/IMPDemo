//
//  main.m
//  IMP用法举例
//
//  Created by wuhao on 16/1/14.
//  Copyright © 2016年 houbu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "newHuman.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Human *human =[Human new];
        newHuman *newhuman=[newHuman new];
        //根据方法名say找到该方法的id,将sel与其绑定；
        SEL sel =@selector(test);//也可以这样写：SEL sel=NSSelectorFromString(@"say");
        SEL sel1=@selector(test1);
        
        IMP imp1 = [human methodForSelector:sel];
        IMP imp2 = [newhuman methodForSelector:sel1];
        
        imp1();
        imp2();
        
    }
    return 0;
}
