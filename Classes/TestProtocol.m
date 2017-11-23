//
//  TestProtocol.m
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

#import "TestProtocol.h"
#import "AAAProtocol.h"


@interface MoveBank : NSObject<AAAProtocol>
- (void)dothing;
@end

@implementation MoveBank

- (void)dothing{
    NSLog(@"转账");
}

@end

@interface SaveBank : NSObject<AAAProtocol>
- (void)dothing;
@end

@implementation SaveBank

- (void)dothing{
    NSLog(@"存款");
}

@end

@interface GJBank : NSObject<AAAProtocol>
- (void)dothing;
@end

@implementation GJBank

- (void)dothing{
    NSLog(@"公积金");
}

@end

#pragma mark - TestProtocol
@implementation TestProtocol
+ (void)test{
    NSLog(@"------Begin(利用协议实现多态)------\n");
    
    NSObject<AAAProtocol> *ob = NULL;
    
    ob = [[MoveBank alloc] init];
    [ob dothing];
    
    ob = [[SaveBank alloc] init];
    [ob dothing];
    
    ob = [[GJBank alloc] init];
    [ob dothing];
    
    NSLog(@"------End------\n");
}
@end
