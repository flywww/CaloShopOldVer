//
//  MissionView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/8.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "MissionView.h"
@interface MissionView()



@end
@implementation MissionView

- (instancetype)initWithPic:(NSString*)PicName andDescribe:(NSString*)missionDescribe andPrice:(NSString*)missionSubDescribe
{
    self = [super init];
    if (self)
    {
        self.missionDescribe=missionDescribe;
        self.missionSubDescribe=missionSubDescribe;
        self.picName=PicName;
        
        [self setupLayout];
        
    }
    return self;
}

-(void)setupLayout
{
    [self addSubview:self.circleView];
    [self addSubview:self.missionPic];
    [self addSubview:self.missionDescribeLabel];
    [self addSubview:self.missionSubDescribeLabel];

}

-(void)updateConstraints
{
    [super updateConstraints];
    
    [self.circleView autoSetDimensionsToSize:CGSizeMake(87, 87)];
    [self.circleView autoCenterInSuperview];
    [self.missionPic autoSetDimensionsToSize:CGSizeMake(80, 80)];
    [self.missionPic autoCenterInSuperview];
    [self.missionDescribeLabel autoAlignAxis:ALAxisVertical toSameAxisOfView:self.circleView];
    [self.missionDescribeLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.circleView withOffset:0];
    [self.missionSubDescribeLabel autoAlignAxis:ALAxisVertical toSameAxisOfView:self.circleView];
    [self.missionSubDescribeLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.missionDescribeLabel withOffset:-3];
}


-(UIView *)circleView
{
    if (!_circleView)
    {
        _circleView=[[UIView alloc]initForAutoLayout];
        _circleView.backgroundColor=[UIColor colorWithHexString:kColorDarkGreen];
        _circleView.layer.cornerRadius=87/2;
    }
    return _circleView;
}

-(UIImageView *)missionPic
{
    if (!_missionPic)
    {
        UIImage* image = [UIImage imageNamed:self.picName];
        _missionPic=[[UIImageView alloc]initWithImage:image];
        _missionPic.clipsToBounds=YES;
        _missionPic.layer.cornerRadius=80/2;
        _missionPic.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionPic;
}

-(UILabel *)missionDescribeLabel
{
    if (!_missionDescribeLabel)
    {
        _missionDescribeLabel=[[UILabel alloc]initForAutoLayout];
        _missionDescribeLabel.text=self.missionDescribe;
        _missionDescribeLabel.backgroundColor=[UIColor clearColor];
        _missionDescribeLabel.textColor=[UIColor colorWithHexString:kColorDarkGreen];
        _missionDescribeLabel.font=[UIFont fontWithName:@"Helvetica-bold" size:16];
        _missionDescribeLabel.textAlignment=NSTextAlignmentCenter;
        //[_missionDescribeLabel sizeToFit];
    }
    return _missionDescribeLabel;
}
-(UILabel *)missionSubDescribeLabel
{
    if (!_missionSubDescribeLabel)
    {
        _missionSubDescribeLabel=[[UILabel alloc]initForAutoLayout];
        _missionSubDescribeLabel.text=self.missionSubDescribe;
        _missionSubDescribeLabel.backgroundColor=[UIColor clearColor];
        _missionSubDescribeLabel.textColor=[UIColor colorWithHexString:kColorDarkRed];
        _missionSubDescribeLabel.font=[UIFont fontWithName:@"Arial" size:14];
        _missionSubDescribeLabel.textAlignment=NSTextAlignmentCenter;
        //[_missionSubDescribeLabel sizeToFit];
    }
        return _missionSubDescribeLabel;
}



@end
