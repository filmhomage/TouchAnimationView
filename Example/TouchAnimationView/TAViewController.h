//
//  TAViewController.h
//  TouchAnimationView
//
//  Created by Jonghyun Kim on 2017/06/17.
//  Copyright (c) 2017 Jonghyun Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TouchAnimationView.h"

@interface TAViewController : UIViewController  <UITextViewDelegate, UITextFieldDelegate>
    
@property (weak, nonatomic) IBOutlet TouchAnimationView *touchAnimationView;
@property (weak, nonatomic) IBOutlet UIButton *button;
    
@end
