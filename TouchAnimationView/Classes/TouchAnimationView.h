//
//  TouchAnimationView.h
//  multitouchanimation
//
//  Created by JonghyunKim on 2017/06/17.
//  Copyright © 2017 JonghyunKim. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TouchAnimationView_Type) {
    TouchAnimationView_ZoomIn = 0,
    TouchAnimationView_ZoomOut,
};

@interface TouchAnimationView : UIView {
    
    CGFloat _animationSize;
    TouchAnimationView_Type _animationType;
}

@property (nonatomic) IBInspectable BOOL controlOnly;
@property (nonatomic) IBInspectable NSString* AnimationType;
@property (nonatomic) IBInspectable UIColor* color;
@property (nonatomic) IBInspectable UIColor* colorText;
@property (nonatomic) IBInspectable CGFloat duration;
@property (nonatomic) IBInspectable CGFloat delay;
@property (nonatomic) IBInspectable CGFloat alphaStart;
@property (nonatomic) IBInspectable CGFloat alphaEnd;
@property (nonatomic) IBInspectable CGFloat size;

-(void)buttonEventAnimation:(UIButton*)button
                  withEvent:(UIEvent *)event
              animationType:(TouchAnimationView_Type)type
                      color:(UIColor*)color;

-(void)textViewFieldAnimation:(CGPoint)point
                     withText:(NSString*)text
                animationType:(TouchAnimationView_Type)type
                        color:(UIColor*)color
                    colorText:(UIColor*)colorText;

-(void)touchesEventAnimation:(NSSet<UITouch *> *)touches
                   withEvent:(UIEvent *)event
               animationType:(TouchAnimationView_Type)type;

@end

