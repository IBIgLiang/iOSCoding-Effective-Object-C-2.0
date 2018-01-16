//
//  ViewController.m
//  11-objc_msgSend
//
//  Created by zhangzhiliang on 2018/1/16.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import <objc/runtime.h>
#import "BGMsgViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)text {
    
    SEL messageName = NSSelectorFromString(@"messageName");
    objc_msgSend(self, messageName);
    
}

- (void)messageName {
    
    NSLog(@"成功");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [self text];
    BGMsgViewController *vc = [[BGMsgViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
