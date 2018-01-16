//
//  ViewController+Association.m
//  52种高效编程学习
//
//  Created by zhangzhiliang on 2018/1/16.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "ViewController+Association.h"
#import "EXTSynthesize.h"

@implementation ViewController (Association)

@synthesizeAssociation(ViewController, back);

- (NSString *)text {
    
    return objc_getAssociatedObject(self, @selector(text));
}

- (void)setText:(NSString *)text {
    
    objc_setAssociatedObject(self, @selector(text), text, OBJC_ASSOCIATION_COPY);
}


@end
