//
//  MenuItem.h
//  weiboFirst
//
//  Created by tang on 16/6/15.
//  Copyright © 2016年 tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MenuItem : NSObject

@property (nonatomic, strong)NSString *title;
@property (nonatomic, strong)UIImage *image;

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image;

@end
