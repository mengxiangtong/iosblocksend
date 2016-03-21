//
//  SecondViewController.m
//  8_页面传值_block_2
//
//  Created by lanou3g on 14-12-14.
//  Copyright (c) 2014年 Lanou_zhou. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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


    _textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 200, 30)];
    _textField.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_textField];
    
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(50, 200, 200, 30);
    [_button setTitle:@"返回" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    
}


- (void)buttonAction:(UIButton *)sender
{
   
    if (self) {
        
        if (self.block) {
            //3,  调用 执行（把文本框的内容作为参数 传回），回调了（3）
            self.block(self.textField.text);
            
            [self.navigationController  popViewControllerAnimated:YES ];
        }
        
    }else{
        
       // [self showAlert];
        
    }
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc
{
    [_textField release];
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
