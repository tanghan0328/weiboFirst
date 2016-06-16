//
//  ButtonViewController.m
//  weiboFirst
//
//  Created by tang on 16/6/15.
//  Copyright © 2016年 tang. All rights reserved.
//

#import "ButtonViewController.h"
#import "MenuItem.h"
#import "MenuItemButton.h"

@interface ButtonViewController ()

@property (nonatomic, retain)NSMutableArray *itemArray;
@property (nonatomic, assign)int buttonIndex;
@property (nonatomic, retain)NSTimer *timer;

@end

@implementation ButtonViewController

- (NSArray *)itemArray
{
    if(_itemArray == nil){
        _itemArray = [[NSMutableArray alloc]init];
    }
    return _itemArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mybuttonArrayLayout];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timeqqqqChange) userInfo:nil repeats:YES];
}
//
- (void)timeqqqqChange
{
    
    if(_buttonIndex == self.itemArray.count){
        [_timer invalidate];
        return ;
    }
     UIButton *btn = self.itemArray[_buttonIndex];
    [self animationBtn:btn];
    
    _buttonIndex ++;
}
//每个button做弹簧系数的动画
- (void)animationBtn:(UIButton *)btn
{
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
        btn.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)mybuttonArrayLayout
{
    float screen_width = [UIScreen mainScreen].bounds.size.width;
    int colscount = 3;
    float wh = 100;
    float heigth = 100;
    int orignY = 300;
    int row = 0;
    int cols = 0;
    float magrin = (screen_width - colscount*wh)/(colscount + 1);
    
    
    for(int i = 0;i<self.buttonArray.count;i++){
        
        row = i/3;
        cols= i%3;
        int X = cols *(wh + magrin)+magrin;
        int Y = row * (heigth + magrin) +orignY;
        
        UIButton *btn = [MenuItemButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(X, Y, wh, heigth);
        
        MenuItem *item = self.buttonArray[i];
        [btn setTitle:item.title forState:UIControlStateNormal];
        [btn setImage:item.image forState:UIControlStateNormal];
        
        btn.transform = CGAffineTransformMakeTranslation(0, self.view.bounds.size.height);
        
        [btn addTarget:self action:@selector(onMybuttonClick:) forControlEvents:UIControlEventTouchDown];
        [btn addTarget:self action:@selector(onMybuttonClick1:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.itemArray addObject:btn];
        [self.view addSubview:btn];
    }
}

- (void)onMybuttonClick:(UIButton *)btn
{
    [UIView animateWithDuration:0.5 animations:^{
        btn.transform = CGAffineTransformMakeScale(1.2,1.2);
    }];
}

- (void)onMybuttonClick1:(UIButton *)btn
{
    [UIView animateWithDuration:0.5 animations:^{
        btn.transform = CGAffineTransformMakeScale(2.0, 2.0f);
        btn.alpha = 0;
    }];
}

@end
