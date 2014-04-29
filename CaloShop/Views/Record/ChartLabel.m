//
//  ChartLabel.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/15.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "ChartLabel.h"

@implementation ChartLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setupLayout];
    }
    return self;
}


-(void) setupLayout
{
    self.textColor=[UIColor colorWithHexString:kColorDarkGreen];
    self.font=[UIFont fontWithName:@"HoboStd" size:16];
    
    
}
@end
