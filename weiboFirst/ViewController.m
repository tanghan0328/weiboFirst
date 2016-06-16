//
//  ViewController.m
//  weiboFirst
//
//  Created by tang on 16/6/13.
//  Copyright © 2016年 tang. All rights reserved.
//

#import "ViewController.h"
#import "ButtonViewController.h"
#import "MenuItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBtnclick:(id)sender {
    // 创建模型对象
    MenuItem *item = [MenuItem itemWithTitle:@"点评" image:[UIImage imageNamed:@"tabbar_compose_review"]];
    MenuItem *item1 = [MenuItem itemWithTitle:@"更多" image:[UIImage imageNamed:@"tabbar_compose_more"]];
    MenuItem *item2 = [MenuItem itemWithTitle:@"拍摄" image:[UIImage imageNamed:@"tabbar_compose_camera"]];
    MenuItem *item3 = [MenuItem itemWithTitle:@"相册" image:[UIImage imageNamed:@"tabbar_compose_photo"]];
    MenuItem *item4 = [MenuItem itemWithTitle:@"文字" image:[UIImage imageNamed:@"tabbar_compose_idea"]];
    MenuItem *item5 = [MenuItem itemWithTitle:@"签到" image:[UIImage imageNamed:@"tabbar_compose_review"]];
    
    ButtonViewController *vc = [[ButtonViewController alloc] init];
    vc.buttonArray = @[item,item1,item2,item3,item4,item5];
    
    [self presentViewController:vc animated:YES completion:nil];
}

@end
