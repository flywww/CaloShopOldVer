//
//  StoreTabelView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/9.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreTabelView.h"
#import "StoreTabelViewCell.h"

@implementation StoreTabelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setupLayout];
    }
    return self;
}

-(void)setupLayout
{
    self.separatorInset=UIEdgeInsetsZero;

}


@end
