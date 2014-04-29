//
//  recordChartView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/13.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "recordChartView.h"

@implementation recordChartView


- (id)init
{
    self = [super init];
    if (self)
    {
        [self setupLayout];
    }
    return self;
}

-(void) setupLayout
{



    [self setupConstraints];
}

-(void)setupConstraints
{
    

}

//-(PNBarChart *)barChart
//{
//    if (!_barChart)
//    {
//        _barChart=[[PNBarChart alloc] initForAutoLayout];
//        _barChart.backgroundColor=[UIColor clearColor];
//        _barChart.barBackgroundColor=[UIColor clearColor];
//        _barChart.strokeColor=[UIColor colorWithHexString:kColorGrayRed];
//    }
//    return _barChart;
//}

//-(UIView *)chartBackGround
//{
//    if (!_chartLine0)
//    {
//        _chartLine0=[[UIView alloc]initForAutoLayout];
//        _chartLine0.backgroundColor=[UIColor redColor];
//        _chartLine0.backgroundColor=[UIColor colorWithHexString:kColorGrayRed];
//    }
//    return  _chartLine0;
//}


//PNBarChart * barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(20, 154, 280, 300)];

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);
    CGContextSetLineWidth(context, 3.0);
    CGContextMoveToPoint(context, 10.0, 10.0);
    CGContextAddLineToPoint(context, 100.0, 100.0);
    CGContextDrawPath(context, kCGPathStroke);
}





@end
