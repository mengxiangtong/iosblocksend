//
//  SecondViewController.h
//  页面传值_block
//
//  Created by mengxiangtong on 14-12-14.
//  Copyright (c) 2014年 mengxiangtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
   
}
//B_block     替换 void (^ )(NSString *str)

typedef void (^BtnBlock)(NSString *);



/* block 反向传值
 在第二个视图控制器的.h文件中定义声明Block属性
 
 */
//　ios4.0系统已开始支持block，在编程过程中，blocks被Obj-C看成是对象，它封装了一段代码，这段代码可以在任何时候执行。Blocks可以作为函数参数或者函数的返回值，而其本身又可以带输入参数或返回值。它和传统的函数指针很类似，但是有区别：blocks是inline的，并且它对局部变量是只读的。
/////////////////传出类  1，声明block。 2，调用  //////////////////////////////////////////////

//1，在第二个页面声明block
//,在第二个页面声明属性
@property (nonatomic, copy) BtnBlock block;


@property(nonatomic,retain)UITextField *textField;
@property(nonatomic,retain)UIButton *button;

@property(nonatomic,retain)UILabel *label;




@end
