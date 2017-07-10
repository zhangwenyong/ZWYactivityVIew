//
//  activityVIew.m
//  Me365
//
//  Created by 张文勇 on 2017/7/10.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "activityVIew.h"
#import "ActivityScrollerView.h"


@interface activityVIew()

@property(nonatomic,weak)ActivityScrollerView *activtit;

@end

@implementation activityVIew

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        ActivityScrollerView *activityscroll = [[ActivityScrollerView alloc]init];
        activityscroll.titleArr = @[@"1",@"2",@"3",@"4"];
        [self addSubview:activityscroll];
        _activtit = activityscroll;
        
        
    }
    return  self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _activtit.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    
}

-(void)dealloc
{
    [_activtit.timer invalidate];
    NSLog(@"======");
}
@end
