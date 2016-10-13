//
//  UIControl+Block.h
//  UIControl+Block
//
//  Created by libohao on 16/10/13.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Block)

- (void)addActionforControlEvents:(UIControlEvents)controlEvents Completion:(void (^)())completion;


@end
