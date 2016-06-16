//
//  MenuItem.m
//  weiboFirst
//
//  Created by tang on 16/6/15.
//  Copyright © 2016年 tang. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

+(instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image
{
    MenuItem *itme  = [[self alloc]init];
    itme.image = image;
    itme.title = title;
    
    return itme;
}

@end
