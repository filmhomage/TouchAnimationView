//
//  TouchAnimationView.m
//  multitouchanimation
//
//  Created by JonghyunKim on 2017/06/17.
//  Copyright © 2017 JonghyunKim. All rights reserved.
//

#import "TouchAnimationView.h"
#import "TouchAnimationCircle.h"

@implementation TouchAnimationView

-(void)buttonEventAnimation:(UIButton*)button
                  withEvent:(UIEvent *)event
              animationType:(TouchAnimationView_Type)type
                      color:(UIColor*)color {
    
    CGFloat radius = [[event allTouches] anyObject].majorRadius;
    [self createCircleView:[[[event touchesForView:button] anyObject] locationInView:self] pressure:((radius > 0) ? radius : 20.0)
             animationType:_animationType
                  withText:@""
                     color:color
                 colorText:self.colorText];
}

-(void)textViewFieldAnimation:(CGPoint)point
                      withText:(NSString*)text
                 animationType:(TouchAnimationView_Type)type
                         color:(UIColor*)color
                     colorText:(UIColor*)colorTextColor {
    
    [self createCircleView:point pressure:(20.0)
             animationType:type
                  withText:text
                     color:color
                 colorText:colorTextColor];
}

-(void)touchesEventAnimation:(NSSet<UITouch *> *)touches
                   withEvent:(UIEvent *)event
               animationType:(TouchAnimationView_Type)type {
    
    CGFloat radius = [[event allTouches] anyObject].majorRadius;
    for(UITouch* touch in touches) {
        [self createCircleView:[touch locationInView:self] pressure:((radius > 0) ? radius : 20.0)
                 animationType:_animationType
                      withText:@""
                         color:self.color
                     colorText:_colorText];
    }
}

-(void)touchesBegan:(NSSet<UITouch*>*)touches withEvent:(UIEvent *)event {
    
    [super touchesBegan:touches withEvent:event];
    [self touchesProcess:touches withEvent:event];
}

-(void)touchesMoved:(NSSet<UITouch*>*)touches withEvent:(UIEvent *)event {
    
    [super touchesMoved:touches withEvent:event];
    [self touchesProcess:touches withEvent:event];
}

-(void)touchesEnded:(NSSet<UITouch*>*)touches withEvent:(UIEvent *)event {
    
    [super touchesEnded:touches withEvent:event];
    [self touchesProcess:touches withEvent:event];
}

-(void)touchesProcess:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if(!self.controlOnly) {
        [self touchesEventAnimation:touches withEvent:event animationType:TouchAnimationView_ZoomOut];
    }
}

-(void)createCircleView:(CGPoint)point pressure:(CGFloat)pressure
          animationType:(TouchAnimationView_Type)type
               withText:(NSString*)text
                  color:(UIColor*)color
              colorText:(UIColor*)colorText {
    
    self.color = color;
    self.colorText = colorText;
    
    TouchAnimationCircle* viewCircle = [[TouchAnimationCircle alloc] init];
    [self addSubview:viewCircle];
    
    CGFloat size = pressure * (type == TouchAnimationView_ZoomIn ?  10 : 1.0);
    
    viewCircle.transform = CGAffineTransformIdentity;
    viewCircle.frame = CGRectMake(point.x, point.y, size, size);
    viewCircle.center = CGPointMake(point.x, point.y);
    viewCircle.backgroundColor = [UIColor clearColor];
    viewCircle.alpha = self.alphaStart ? self.alphaStart : 0.5;
    viewCircle.colorAnimation = self.color ? self.color : [UIColor blueColor];
    viewCircle.colorText = self.colorText ? self.colorText : [UIColor blackColor];
    
    if(text.length > 0) {
        
        UILabel* labelForCalculate = [[UILabel alloc] initWithFrame:viewCircle.frame];
        labelForCalculate.text = text;
        labelForCalculate.adjustsFontSizeToFitWidth = YES;
        UIView * viewForCalculate = [[UIView alloc]initWithFrame:viewCircle.frame];
        [viewForCalculate addSubview:labelForCalculate];
        
        viewCircle.sizeText = (type == TouchAnimationView_ZoomIn) ? 150.0 : labelForCalculate.font.pointSize;
        viewCircle.text = text;
    }
    
    [UIView animateWithDuration:self.duration ? self.duration : 0.5
                          delay:self.delay
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         CGFloat size = ((type == TouchAnimationView_ZoomIn) ? 0.1 : 10);
                         viewCircle.transform = CGAffineTransformMakeScale(size, size);
                         viewCircle.alpha = self.alphaEnd ? self.alphaEnd : 0.0;
                     } completion:^(BOOL finished) {
                         [viewCircle removeFromSuperview];
                     }];
}

-(void)setType:(NSString *)type {
    
    _animationType = [type isEqualToString:@"TouchAnimationView_ZoomIn"] ? TouchAnimationView_ZoomIn : TouchAnimationView_ZoomOut;
}


-(void)setSize:(CGFloat)size {
    
    _animationSize = size;
}
@end
