//
//  ActivityScrollerView.h
//  Me365
//
//  Created by 张文勇 on 2017/7/10.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityScrollerView : UIScrollView<UIScrollViewDelegate>

/**
 注释
 */
@property (nonatomic,strong)NSTimer *timer;
/**
 注释
 */
@property (nonatomic,strong)NSArray <NSString *>*titleArr;
@end
