//
//  TAViewController.m
//  TouchAnimationView
//
//  Created by Jonghyun Kim on 2017/06/17.
//  Copyright (c) 2017 Jonghyun Kim. All rights reserved.
//

#import "TAViewController.h"

@implementation TAViewController

-(IBAction)buttonTouchUpInside:(UIButton *)button forEvent:(UIEvent *)event {
    
    [self.touchAnimationView buttonEventAnimation:button withEvent:event animationType:TouchAnimationView_ZoomOut color:[UIColor orangeColor]];
}

-(IBAction)buttonTouchDown:(UIButton *)button forEvent:(UIEvent *)event {
    
    [self.touchAnimationView buttonEventAnimation:button withEvent:event animationType:TouchAnimationView_ZoomOut color:[UIColor orangeColor]];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    CGRect rectInputText = [textView caretRectForPosition:textView.selectedTextRange.start];
    [self.touchAnimationView textViewFieldAnimation:[textView convertPoint:CGPointMake(CGRectGetMidX(rectInputText), CGRectGetMidY(rectInputText)) toView:self.view]
                                           withText:text
                                      animationType:TouchAnimationView_ZoomIn
                                              color:[UIColor greenColor]
                                          colorText:[UIColor whiteColor]];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {

    CGRect rectInputText = [textField caretRectForPosition:textField.selectedTextRange.start];
    [self.touchAnimationView textViewFieldAnimation:[textField convertPoint:CGPointMake(CGRectGetMidX(rectInputText), CGRectGetMidY(rectInputText)) toView:self.view]
                                           withText:string
                                      animationType:TouchAnimationView_ZoomOut
                                              color:[UIColor redColor]
                                          colorText:[UIColor whiteColor]];
    return YES;
}

@end
