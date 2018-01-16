//
//  BGMsgViewController.m
//  11-objc_msgSend
//
//  Created by zhangzhiliang on 2018/1/16.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGMsgViewController.h"
#import <objc/message.h>

@interface BGMsgViewController ()

@end

@implementation BGMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)text {
    
    SEL messageName =NSSelectorFromString(@"messageName");
    struct objc_super superInfo = {
        self,
        [super class]
    };
    objc_msgSendSuper(&superInfo, messageName);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self text];
}

@end
