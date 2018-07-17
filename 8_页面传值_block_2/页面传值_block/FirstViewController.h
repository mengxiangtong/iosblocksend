//
//  FirstViewController.h
//  页面传值_block
//
//  Created by mengxiangtong on 14-12-14.
//  Copyright (c) 2014年 mengxiangtong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface FirstViewController : UIViewController

@property (nonatomic, strong) UILabel *l ;
@property (nonatomic, copy) NSString  *s ;


@property(nonatomic,retain)UIButton *button;
@property(nonatomic,retain)UILabel *label;

@end
