//
//  recordChartView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/13.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "ChartBackGroundView.h"

@implementation ChartBackGroundView


- (id)init
{
    self = [super init];
    if (self)
    {

    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat topPosition=30;
    CGFloat bottunPosition=270;
    
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetStrokeColorWithColor(context, [[UIColor colorWithHexString:@"abd6cf"] CGColor]);
    
    CGContextSetLineWidth(context, 2.0);
    
    CGContextMoveToPoint(context, 0, topPosition);
    CGContextAddLineToPoint(context, 320, topPosition);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 0, topPosition+(bottunPosition-topPosition)/3);
    CGContextAddLineToPoint(context, 320, topPosition+(bottunPosition-topPosition)/3);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 0, topPosition+2*(bottunPosition-topPosition)/3);
    CGContextAddLineToPoint(context, 320, topPosition+2*(bottunPosition-topPosition)/3);
    CGContextDrawPath(context, kCGPathStroke);
    
    
    CGContextMoveToPoint(context, 0, bottunPosition);
    CGContextAddLineToPoint(context, 320, bottunPosition);
    CGContextDrawPath(context, kCGPathStroke);
}

@end
