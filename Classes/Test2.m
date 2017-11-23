//
//  Test2.m
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

#import "Test2.h"
#import "Computer.h"

@implementation Test2
+ (void)test{
    NSLog(@"------Begin(利用协议实现面向接口编程 依赖倒置)------\n");
    
    InterCPU *cpu = [[InterCPU alloc] init];
    JSDMemory *mem = [[JSDMemory alloc] init];
    XSDisk *dik = [[XSDisk alloc] init];
    
    Computer *cp = [[Computer alloc] initWithCPU:cpu
                                          memory:mem
                                            disk:dik];
    [cp work];
    NSLog(@"------End------\n");
    NSLog(@"------配置一台CPU超牛逼的电脑------\n");
    
    SXCPU *ss = [[SXCPU alloc] init];
    Computer *cp1 = [[Computer alloc] initWithCPU:ss
                                          memory:mem
                                            disk:dik];
    [cp1 work];
    NSLog(@"------End------\n");
}
@end
