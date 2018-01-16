//
//  ViewController.m
//  52种高效编程学习
//
//  Created by zhangzhiliang on 2018/1/15.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "ViewController+Association.h"

static void *alertViewKey = @"alert_view_key";

@interface ViewController ()<UIAlertViewDelegate>

//@property (nonatomic, strong) void

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)text {
//    CGPoint center = CGPointZero;
//    center = CGPointMake(100, 100);
//    __weak typeof(self) weakSelf = self;
//    CGPoint (^pointAddHandler)(CGPoint addPoint) = ^(CGPoint addPoint) {
//        return CGPointMake(center.x + addPoint.x, center.y + addPoint.y);
//    };
//
//    NSString *a = NSStringFromCGPoint(pointAddHandler(CGPointMake(10, 10)));
//    NSLog(@"%@", a);    //输出{10,10}
//
//}

//- (void)text1 {
//
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"测试" message:@"测试是否正确" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
//
//    void (^sureButtonClick)(NSInteger buttonIndex) = ^(NSInteger buttonIndex) {
//        if (buttonIndex==1) {
//            NSLog(@"点击了确认");
//        }
//    };
//    objc_setAssociatedObject(alertView, alertViewKey, sureButtonClick, OBJC_ASSOCIATION_COPY);
//
//    [alertView show];
//}
//
//
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
//
//    void (^block)(NSInteger) = objc_getAssociatedObject(alertView, alertViewKey);
//    block(buttonIndex);
//}

- (void)text2 {
    
    [self setText:@"测试association"];
    NSLog(@"%@", self.text);
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self text2];
    
    
}

@end
