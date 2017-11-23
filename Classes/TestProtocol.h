//
//  TestProtocol.h
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

// 利用协议实现多态 开闭原则 软件实体如类、模块和函数应该对扩展开放,对修改关闭
#import <Foundation/Foundation.h>

@interface TestProtocol : NSObject
+ (void)test;
@end
