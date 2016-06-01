//
//  FirstViewController.h
//  8_页面传值_block_2
//
//  Created by lanou3g on 14-12-14.
//  Copyright (c) 2014年 Lanou_zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface FirstViewController : UIViewController

@property (nonatomic, strong) UILabel *l ;
@property (nonatomic, copy) NSString  *s ;


@property(nonatomic,retain)UIButton *button;
@property(nonatomic,retain)UILabel *label;

@end
