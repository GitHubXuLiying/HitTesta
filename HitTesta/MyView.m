//
//  MyView.m
//  HitTesta
//
//  Created by xuliying on 2017/11/24.
//  Copyright © 2017年 xly. All rights reserved.
//

#import "MyView.h"

@implementation MyView
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint hitPoint = [self convertPoint:point toView:self.btn];
    if ([self.btn pointInside:hitPoint withEvent:event]) {
        return self.btn;
    }else{
        return [super hitTest:point withEvent:event];
    }
}
@end
