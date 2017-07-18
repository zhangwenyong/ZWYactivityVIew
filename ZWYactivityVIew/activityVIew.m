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
-(instancetype)initWithDic:(NSDictionary *)dic
{
    self = [self init];
    
    if(self)
    {
        self.backgroundColor = [UIColor colorWithRed:253/255.0 green:149/255.0 blue:10/255.0 alpha:1.0];
        ActivityScrollerView *activityscroll = [[ActivityScrollerView alloc]init];
        if(dic)
        {
                 activityscroll.titleArr = @[dic[@"active_name"],dic[@"active_content"]];
        }
   
        [self addSubview:activityscroll];
        _activtit = activityscroll;
        self.userInteractionEnabled = NO;
    }
    
    return self;
}

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        
        
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
    NSLog(@"===view销毁===");
}
@end
