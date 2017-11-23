//
//  ViewController.m
//  Patterns
//
//  Created by ice on 2017/11/23.
//  Copyright © 2017年 ice. All rights reserved.
//

#import "ViewController.h"
#import "TestProtocol.h"
#import "Test2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [TestProtocol test];
    [Test2 test];
}


@end
