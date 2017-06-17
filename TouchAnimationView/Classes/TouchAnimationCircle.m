//
//  TouchAnimationCircle.m
//  multitouchanimation
//
//  Created by JonghyunKim on 2017/06/17.
//  Copyright © 2017 JonghyunKim. All rights reserved.
//

#import "TouchAnimationCircle.h"

@implementation TouchAnimationCircle

-(void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(context, rect);
    CGContextSetFillColor(context, CGColorGetComponents(self.colorAnimation.CGColor));
    CGContextFillPath(context);
    
    if(self.text) {
        NSAttributedString* attrStr = [[NSAttributedString alloc] initWithString:self.text attributes:@{ NSFontAttributeName : [UIFont systemFontOfSize:self.sizeText], NSForegroundColorAttributeName : self.colorText }];
        CGRect rectDraw = rect;
        rectDraw.origin.x = rect.origin.x + rect.size.width/4;
        [attrStr drawInRect:rectDraw];
    }
}

@end
