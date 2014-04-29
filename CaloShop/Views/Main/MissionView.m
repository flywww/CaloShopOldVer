//
//  MissionView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/8.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "MissionView.h"
//NSString* picFileName;
@interface MissionView()

@property (nonatomic,strong) UIView* circleView;


@end
@implementation MissionView

- (instancetype)initWithPic:(NSString*)PicName andDescribe:(NSString*)missionDescribe
{
    self = [super init];
    if (self)
    {
        self.missionDescribe=missionDescribe;
        self.picName=PicName;
        
        [self setupLayout];
        
    }
    return self;
}

-(void)setupLayout
{
    
    
    [self addSubview:self.circleView];
    [self addSubview:self.missionPic];
    [self addSubview:self.missionLabel];
    [self setupConstraints];
    
}

-(void)setupConstraints
{

    
    
    NSDictionary* viewDictionary =@{@"circleView":self.circleView,
                                    @"missionPic":self.missionPic,
                                    @"missionLabel":self.missionLabel};
    

    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[circleView(87)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[missionPic(80)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[missionLabel]|"
                                                                 options:NSLayoutFormatAlignAllCenterY
                                                                 metrics:nil
                                                                   views:viewDictionary]];
    
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[circleView(87)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[missionPic(80)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[circleView]-(-0.5)-[missionLabel]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDictionary]];
     NSLayoutConstraint* xConstraint;
     xConstraint=[NSLayoutConstraint constraintWithItem:self.circleView
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1
                                               constant:0];
     [self addConstraint:xConstraint];
 
     xConstraint=[NSLayoutConstraint constraintWithItem:self.missionPic
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1
                                               constant:0];
     [self addConstraint:xConstraint];
 
 
     NSLayoutConstraint* yConstraint;
    
    yConstraint=[NSLayoutConstraint constraintWithItem:self.circleView
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:0];
    [self addConstraint:yConstraint];
    
     yConstraint=[NSLayoutConstraint constraintWithItem:self.missionPic
                                              attribute:NSLayoutAttributeCenterY
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterY
                                             multiplier:1
                                               constant:0];
     [self addConstraint:yConstraint];
}

-(UIView *)circleView
{
    if (!_circleView)
    {
        _circleView=[[UIView alloc]init];
        _circleView.backgroundColor=[UIColor colorWithHexString:kColorDarkGreen];
        _circleView.layer.cornerRadius=87/2;
        _circleView.translatesAutoresizingMaskIntoConstraints=NO;
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
        _missionLabel.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionPic;
}

-(UILabel *)missionLabel
{
    if (!_missionLabel)
    {
        _missionLabel=[[UILabel alloc]init];
        _missionLabel.text=self.missionDescribe;
        _missionLabel.backgroundColor=[UIColor clearColor];
        _missionLabel.textColor=[UIColor colorWithHexString:kColorDarkGreen];
        _missionLabel.font=[UIFont fontWithName:@"HoboStd" size:18];
        _missionLabel.textAlignment=NSTextAlignmentCenter;
        [_missionLabel sizeToFit];
        _missionLabel.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionLabel;
}


@end
