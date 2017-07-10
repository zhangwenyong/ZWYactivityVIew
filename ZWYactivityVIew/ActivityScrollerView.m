//
//  ActivityScrollerView.m
//  Me365
//
//  Created by 张文勇 on 2017/7/10.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "ActivityScrollerView.h"

@implementation ActivityScrollerView

-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.pagingEnabled =  YES;
        self.delegate = self;
      
    }
    return self;
    
}


-(void)setTitleArr:(NSArray<NSString *> *)titleArr
{
    _titleArr = titleArr;
    self.contentSize = CGSizeMake([[UIScreen mainScreen]bounds].size.width, 30*(_titleArr.count+2));
    self.contentOffset = CGPointMake(0, 30);
     [self addUI];
 _timer =   [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(ZWYrunllop) userInfo:nil repeats:YES];
}


-(void)ZWYrunllop
{
    CGPoint point = self.contentOffset;
    
    point.y =point.y+30;

    [self setContentOffset:point animated:YES];
    
}

-(void)addUI{
    
    for(int i=0;i<_titleArr.count+2;i++)
    {
        UILabel *lbale = [[UILabel alloc]init];
        lbale.backgroundColor = [UIColor redColor];
        
        if(i==0)
        {
            lbale.text = _titleArr[_titleArr.count-1];
        }else if(i==_titleArr.count+1)
        {
            lbale.text = _titleArr[0];
        }
        
        else
        {
             lbale.text = _titleArr[i-1];
            
        }
        [self addSubview:lbale];
            
    }
}
-(void)layoutSubviews
{
    [super layoutSubviews];
   
    for(int i=0; i<self.subviews.count;i++)
    {
        UILabel *lable = self.subviews[i];
        lable.frame = CGRectMake(0, 30*i, [[UIScreen mainScreen]bounds].size.width, 30);
    }
    
}

#pragma dd
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger  count = _titleArr.count;
    
    if(self.contentOffset.y ==0)
    {
        
        self.contentOffset = CGPointMake(0, (count)*self.frame.size.height);
        
    }
    else if (self.contentOffset.y ==(count+1)*self.frame.size.height)
    {
        
    
        self.contentOffset = CGPointMake(0, self.frame.size.height);
    }
    
    
}


-(void)dealloc
{
  
}


@end
