//
//  FirstViewController.m
//  8_页面传值_block_2
//
//  Created by lanou3g on 14-12-14.
//  Copyright (c) 2014年 Lanou_zhou. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"




//////////传入类  3，实现   ///////////////////////////////////////////////




@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    _label = [[UILabel alloc] initWithFrame: CGRectMake(50, 100, 200, 30)];
    
    [self.view addSubview:_label];
    
    
    
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(50, 200, 200, 30);
    [_button setTitle:@"下一页" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(showSecondWithBlock:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];

}


//按钮点击事件
//在第一个视图中获得第二个视图控制器，并且用第二个视图控制器来调用定义的属性
- (void)showSecondWithBlock:(UIButton *)sender
{
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secondVC animated:YES];
    
    //实现       并不执行。什么时候调用，什么时候执行
    
    //2， (给下一级 属性赋值) block 赋值 即 block的   实现
    secondVC.block = ^(NSString *str){
        //把参数值赋给 label
        self.label.text = str;
        
        };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_label release];
    [_button release];
    [super dealloc];
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
