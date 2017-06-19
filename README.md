# TouchAnimationView

[![Build Status](https://travis-ci.org/filmhomage/TouchAnimationView.svg?branch=master)](https://travis-ci.org/filmhomage/TouchAnimationView)
[![Version](https://img.shields.io/cocoapods/v/TouchAnimationView.svg?style=flat)](http://cocoapods.org/pods/TouchAnimationView)
[![License](https://img.shields.io/cocoapods/l/TouchAnimationView.svg?style=flat)](http://cocoapods.org/pods/TouchAnimationView)
[![Platform](https://img.shields.io/cocoapods/p/TouchAnimationView.svg?style=flat)](http://cocoapods.org/pods/TouchAnimationView)


![touchanimationview mov](https://user-images.githubusercontent.com/4126751/27257112-271bbc08-53cb-11e7-8fe7-5af40c9cf96d.gif)


### Animation Style
```objective-c
typedef NS_ENUM(NSInteger, TouchAnimationView_Type) {
    TouchAnimationView_ZoomIn = 0,
    TouchAnimationView_ZoomOut,
};
```

### Property

```objective-c
@property (nonatomic) IBInspectable BOOL controlOnly;
@property (nonatomic) IBInspectable NSString* AnimationType;
@property (nonatomic) IBInspectable UIColor* color;
@property (nonatomic) IBInspectable UIColor* colorText;
@property (nonatomic) IBInspectable CGFloat duration;
@property (nonatomic) IBInspectable CGFloat delay;
@property (nonatomic) IBInspectable CGFloat alphaStart;
@property (nonatomic) IBInspectable CGFloat alphaEnd;
@property (nonatomic) IBInspectable CGFloat size;
```

### Interface

``` objective-c
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
```

### Usage
![set custom class and just set propery on storyboard](https://user-images.githubusercontent.com/4126751/27309059-378763a2-5552-11e7-8a9a-653589125390.png)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

TouchAnimationView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TouchAnimationView"
```

## License

TouchAnimationView is available under the MIT license. See the LICENSE file for more info.
