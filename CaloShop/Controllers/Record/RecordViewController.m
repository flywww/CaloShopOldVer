//
//  RecordViewController.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/9.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "RecordViewController.h"
#import "ChartBackGroundView.h"
#import "ChartDetailView.h"
#import "PNChart.h"
#import "PNBar.h"

@interface RecordViewController ()

@property (nonatomic,strong) PNBarChart* recordBarChart;
@property (nonatomic,strong) UIView* chartButtonLine;
@property  (nonatomic,strong) ChartBackGroundView* chartBackGroundView;
@property (nonatomic,strong) ChartDetailView* chartDetailView;

@end

@implementation RecordViewController




- (void)viewDidLoad
{
    self.view.backgroundColor=[UIColor colorWithHexString:kColorGreen];
    [super viewDidLoad];
    
    
    [self.view addSubview:self.chartBackGroundView];
    [self.view addSubview:self.recordBarChart];
    //[self.view addSubview:self.chartButtonLine];
    [self.view addSubview:self.chartDetailView];
    
    [self setupConstraints];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.recordBarChart strokeChart];
}


-(void)setupConstraints
{
    [self.chartBackGroundView autoSetDimensionsToSize:CGSizeMake(320, 300)];
    [self.chartBackGroundView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.recordBarChart];
    [self.chartBackGroundView autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.view];
    
//    [self.chartButtonLine autoSetDimensionsToSize:CGSizeMake(260,2)];
//    [self.chartButtonLine autoAlignAxis:ALAxisVertical toSameAxisOfView:self.view];
//    [self.chartButtonLine autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.view withOffset:-81];
    
    [self.chartDetailView autoSetDimensionsToSize:CGSizeMake(320, 120)];
    [self.chartDetailView autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.view];
    [self.chartDetailView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.view];
}

-(PNBarChart *)recordBarChart
{
    if (!_recordBarChart)
    {
        _recordBarChart=[[PNBarChart alloc]initWithFrame:CGRectMake(20, 154, 280, 300)];
        
        _recordBarChart.backgroundColor=[UIColor clearColor];
        _recordBarChart.barBackgroundColor=[UIColor clearColor];
        _recordBarChart.strokeColor=[UIColor colorWithHexString:kColorGrayRed];
        
        [_recordBarChart setYValues:@[@1,@24,@12,@18,@30,@10,@21]];
        [_recordBarChart setXLabels:@[@"Mon",@"Tue",@"Wed",@"Thu",@"Fri",@"Sat",@"Sun"]];
       
    }

    return _recordBarChart;
}

-(UIView*) chartButtonLine
{
    if (!_chartButtonLine)
    {
        _chartButtonLine=[[UIView alloc]initForAutoLayout];
        _chartButtonLine.backgroundColor=[UIColor colorWithHexString:kColorGrayRed];
    }
    return _chartButtonLine;
}

-(ChartBackGroundView *)chartBackGroundView
{
    if (!_chartBackGroundView)
    {
        _chartBackGroundView=[[ChartBackGroundView alloc]initForAutoLayout];
    }    
    return _chartBackGroundView;
}

-(ChartDetailView *)chartDetailView
{
    if (!_chartDetailView)
    {
        _chartDetailView=[[ChartDetailView alloc]initForAutoLayout];
        _chartDetailView.backgroundColor=[UIColor colorWithHexString:@"abd6cf"];
    }
    return _chartDetailView;
}

@end
