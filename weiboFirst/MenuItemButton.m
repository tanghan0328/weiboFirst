//
//  MenuItemButton.m
//  weiboFirst
//
//  Created by tang on 16/6/15.
//  Copyright © 2016年 tang. All rights reserved.
//

#import "MenuItemButton.h"
#define KMaxValue 0.8

@implementation MenuItemButton

- (void)awakeFromNib
{
    [self setup];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self setup];
    }
    return self;
}

- (void)setup{

    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat imageX = self.bounds.size.width;
    CGFloat imageY = self.bounds.size.height *KMaxValue;
    CGFloat X = 0;
    CGFloat Y = 0;
    
    self.imageView.frame = CGRectMake(X, Y, imageX, imageY);
    
    CGFloat labelX = self.bounds.size.width;
    CGFloat labelY = self.bounds.size.height - imageY;
    
    self.titleLabel.frame = CGRectMake(X, imageY, labelX, labelY);
}

- (void)setHighlighted:(BOOL)highlighted
{

}

@end
