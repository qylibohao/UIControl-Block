//
//  UIControl+Block.m
//  UIControl+Block
//
//  Created by libohao on 16/10/13.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import "UIControl+Block.h"
#import <objc/runtime.h>

static void *BlockKey = @"BlockKey";


@implementation UIControl (Block)

- (void)addActionforControlEvents:(UIControlEvents)controlEvents Completion:(void (^)())completion {
    [self addTarget:self action:@selector(blockAction) forControlEvents:controlEvents];
    
    void (^block)(void) = ^{
        completion();
    };
    objc_setAssociatedObject(self, BlockKey, block, OBJC_ASSOCIATION_COPY);

}

- (void)blockAction {
    void (^block)(void) = objc_getAssociatedObject(self, BlockKey);
    block();
}

@end
