//
//  Test2.m
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

#import "Computer.h"

@implementation XSDisk
- (void)work{
    NSLog(@"西数硬盘");
}
@end

@implementation JSDMemory
- (void)work{
    NSLog(@"金士顿内存");
}
@end

@implementation InterCPU
- (void)work{
    NSLog(@"Inter CPU");
}
@end

@implementation SXCPU
- (void)work{
    NSLog(@"傻叉 CPU");
}
@end

#pragma mark - Computer
@interface Computer ()
@property (nonatomic,strong) NSObject<HardDisk> *disk;
@property (nonatomic,strong) NSObject<Memory> *memory;
@property (nonatomic,strong) NSObject<CPU> *cpu;
@end

@implementation Computer
- (instancetype)initWithCPU:(NSObject<CPU> *)cpu
                     memory:(NSObject<Memory> *)memory
                       disk:(NSObject<HardDisk> *)disk{
    self = [super init];
    if (self) {
        self.disk = disk;
        self.cpu = cpu;
        self.memory = memory;
    }
    return self;
}

- (void)work{
    [self.disk work];
    [self.cpu work];
    [self.memory work];
}
@end
