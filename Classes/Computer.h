//
//  Test2.h
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

// 依赖倒置原则 高层模块不应该依赖低层模块,二者都应该依赖其抽象;抽象不应该依赖细节;细节应该依赖抽象。总而言之，依赖于抽象(接口),不要依赖具体的实现(类)，也就是针对接口编程。
#import <Foundation/Foundation.h>

// 定义接口
@protocol HardDisk
- (void)work;
@end

@protocol Memory
- (void)work;
@end

@protocol CPU
- (void)work;
@end

// 定义具体硬盘
@interface XSDisk : NSObject<HardDisk>
- (void)work;
@end

// 定义具体内存
@interface JSDMemory : NSObject<Memory>
- (void)work;
@end

// 定义具体CPU
@interface InterCPU : NSObject<CPU>
- (void)work;
@end

@interface SXCPU:NSObject<CPU>
- (void)work;
@end

@interface Computer : NSObject
- (instancetype)initWithCPU:(NSObject<CPU> *)cpu
                     memory:(NSObject<Memory> *)memory
                       disk:(NSObject<HardDisk> *)disk;
- (void)work;
@end
