//
//  ChartDetailView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/15.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "ChartDetailView.h"
#import "ChartLabel.h"

@interface ChartDetailView()

@property (nonatomic,strong) ChartLabel* weekTitle;
@property (nonatomic,strong) ChartLabel* averageTitle;
@property (nonatomic,strong) ChartLabel* weekCals;
@property (nonatomic,strong) ChartLabel* averageCals;
@property (nonatomic,strong) ChartLabel* weekBurned;
@property (nonatomic,strong) ChartLabel* averageBurned;
@property (nonatomic,strong) ChartLabel* averageCalsValue;
@property (nonatomic,strong) ChartLabel* weekCalsValue;

@property (nonatomic,strong) UIView* detailBackView;
@property (nonatomic,strong) UIView* seperateView;

@end



@implementation ChartDetailView

- (id)init
{
    self = [super init];
    if (self)
    {
        [self setupLayout];
    }
    return self;
}

-(void)setupLayout
{

    [self addSubview:self.detailBackView];
    [self addSubview:self.seperateView];
    
    [self addSubview:self.weekTitle];
//    [self addSubview:self.weekCals];
    [self addSubview:self.weekCalsValue];
    [self addSubview:self.weekBurned];
    
    [self addSubview:self.averageTitle];
//    [self addSubview:self.averageCals];
    [self addSubview:self.averageCalsValue];
    [self addSubview:self.averageBurned];
    
    
    [self setupConstraints];
}

-(void)setupConstraints
{
    [self.detailBackView autoSetDimensionsToSize:CGSizeMake(320, 120)];
    [self.detailBackView autoCenterInSuperview];
    
    [self.seperateView autoSetDimensionsToSize:CGSizeMake(2, 100)];
    [self.seperateView autoCenterInSuperview];
    
    [self.weekCalsValue autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.weekCalsValue autoAlignAxis:ALAxisVertical toSameAxisOfView:self withOffset:-80];

    [self.averageCalsValue autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.averageCalsValue autoAlignAxis:ALAxisVertical toSameAxisOfView:self withOffset:80];
    
    [self.weekTitle autoAlignAxis:ALAxisVertical toSameAxisOfView:self.weekCalsValue];
    [self.weekTitle autoConstrainAttribute:ALEdgeBottom toAttribute:ALEdgeTop ofView:self.weekCalsValue withOffset:0];
    
    [self.averageTitle autoAlignAxis:ALAxisVertical toSameAxisOfView:self.averageCalsValue];
    [self.averageTitle autoConstrainAttribute:ALEdgeBottom toAttribute:ALEdgeTop ofView:self.averageCalsValue withOffset:00];

    [self.weekBurned autoAlignAxis:ALAxisVertical toSameAxisOfView:self.weekCalsValue];
    [self.weekBurned autoConstrainAttribute:ALEdgeTop toAttribute:ALEdgeBottom ofView:self.weekCalsValue withOffset:0];
    
    [self.averageBurned autoAlignAxis:ALAxisVertical toSameAxisOfView:self.averageCalsValue];
    [self.averageBurned autoConstrainAttribute:ALEdgeTop toAttribute:ALEdgeBottom ofView:self.averageCalsValue withOffset:0];
}

-(UIView *)detailBackView
{
    if (!_detailBackView)
    {
        _detailBackView=[[UIView alloc]initForAutoLayout];
        _detailBackView.backgroundColor=[UIColor colorWithHexString:kColorLightGreen];
        _detailBackView.alpha=0.5;
    }
    return _detailBackView;
}

-(UIView *)seperateView
{
    if (!_seperateView)
    {
        _seperateView=[[UIView alloc]initForAutoLayout];
        _seperateView.backgroundColor=[UIColor colorWithHexString:kColorGrayRed];
    }
    return _seperateView;
}
-(ChartLabel *)weekTitle
{
    if (!_weekTitle)
    {
        _weekTitle=[[ChartLabel alloc]initForAutoLayout];
        _weekTitle.text=@"This Week";
    }
    return _weekTitle;
}

//-(ChartLabel *)weekCals
//{
//    if (!_weekCals)
//    {
//        _weekCals=[[ChartLabel alloc]initForAutoLayout];
//        _weekCals.text=@"cals";
//    }
//    return _weekCals;
//}

-(ChartLabel *)weekBurned
{
    if (!_weekBurned)
    {
        _weekBurned=[[ChartLabel alloc]initForAutoLayout];
        _weekBurned.text=@"Cals Burned";
    }
    return _weekBurned;
}

-(ChartLabel *)averageTitle
{
    if (!_averageTitle)
    {
        _averageTitle=[[ChartLabel alloc]initForAutoLayout];
        _averageTitle.text=@"Day Average";
    }
    return _averageTitle;
}

//-(ChartLabel *)averageCals
//{
//    if (!_averageCals)
//    {
//        _averageCals=[[ChartLabel alloc]initForAutoLayout];
//        _averageCals.text=@"cals";
//    }
//    return _averageCals;
//}

-(ChartLabel *)averageBurned
{
    if (!_averageBurned)
    {
        _averageBurned=[[ChartLabel alloc]initForAutoLayout];
        _averageBurned.text=@"Cals Burned";
    }
    return _averageBurned;
}


-(ChartLabel *)averageCalsValue
{
    if (!_averageCalsValue)
    {
        _averageCalsValue=[[ChartLabel alloc]initForAutoLayout];
        _averageCalsValue.text=@"1462";
        _averageCalsValue.textColor=[UIColor colorWithHexString:kColorGrayRed];
        _averageCalsValue.font=[UIFont fontWithName:@"HoboStd" size:42];
    }
    return _averageCalsValue;
}

-(ChartLabel *)weekCalsValue
{
    if (!_weekCalsValue)
    {
        _weekCalsValue=[[ChartLabel alloc]initForAutoLayout];
        _weekCalsValue.text=@"10240";
        _weekCalsValue.textColor=[UIColor colorWithHexString:kColorGrayRed];
        _weekCalsValue.font=[UIFont fontWithName:@"HoboStd" size:42];
    }
    return _weekCalsValue;
}

@end
