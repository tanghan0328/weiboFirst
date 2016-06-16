//
//  WecomeView.m
//  weiboFirst
//
//  Created by tang on 16/6/13.
//  Copyright © 2016年 tang. All rights reserved.
//

#import "WecomeView.h"

@interface WecomeView()

@property (weak, nonatomic) IBOutlet UIImageView *singelImage;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WecomeView

+ (instancetype)welcomeView
{
    return [[NSBundle mainBundle]loadNibNamed:@"WecomeView" owner:nil options:nil][0];
}

/*
 文字图片慢慢消失，alpha
 显示头像，头像往上移动的动画，弹簧效果
 欢迎回来的文字 慢慢显示 alpha
 */

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    _iconImage.transform = CGAffineTransformMakeTranslation(0, 50);
    
    [UIView animateWithDuration:1 animations:^{
        _singelImage.alpha = 0;
    }completion:^(BOOL finished){
        
        _iconImage.hidden = NO;
        
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
            _iconImage.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            _textLabel.hidden = NO;
            _textLabel.alpha = 0;
            
            [UIView animateWithDuration:1 animations:^{
                _textLabel.alpha = 1;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        }];
        
    }];
  
}
@end
