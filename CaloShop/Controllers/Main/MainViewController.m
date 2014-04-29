//
//  ViewController.m
//  CaloShop
//
//  Created by 林盈志 on 2014/3/24.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "MainViewController.h"
#import "CaloRadialView.h"
#import "MissionView.h"

@interface MainViewController ()

@property (nonatomic,strong) UILabel* pointsLabel;
@property (nonatomic,strong) CaloRadialView* caloRadialView;
@property (nonatomic,strong) MissionView* missionView1;
@property (nonatomic,strong) MissionView* missionView2;
@property (nonatomic,strong) MissionView* missionView3;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self viewSetup];

}

-(void)viewSetup
{
    self.view.backgroundColor=[UIColor colorWithHexString:kColorGreen];
    
    [self.view addSubview:self.caloRadialView];
    [self.view addSubview:self.pointsLabel];
    [self.view addSubview:self.missionView1];
    [self.view addSubview:self.missionView2];
    [self.view addSubview:self.missionView3];
    
    NSLayoutConstraint* xConstraint;
    xConstraint=[NSLayoutConstraint constraintWithItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self.view addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.pointsLabel
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self.view addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.missionView1
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self.view addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.missionView2
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:100];
    [self.view addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.missionView3
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:-100];
    [self.view addConstraint:xConstraint];
    
    NSLayoutConstraint* yConstraint;
    yConstraint=[NSLayoutConstraint constraintWithItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:-80];
    [self.view addConstraint:yConstraint];
    
    yConstraint=[NSLayoutConstraint constraintWithItem:self.pointsLabel
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:143];
    [self.view addConstraint:yConstraint];
    yConstraint=[NSLayoutConstraint constraintWithItem:self.missionView1
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:225];
    [self.view addConstraint:yConstraint];


    yConstraint=[NSLayoutConstraint constraintWithItem:self.missionView2
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:225];
    [self.view addConstraint:yConstraint];
    
    yConstraint=[NSLayoutConstraint constraintWithItem:self.missionView3
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.caloRadialView
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:225];
    [self.view addConstraint:yConstraint];
}

-(CaloRadialView *)caloRadialView
{
    if (!_caloRadialView)
    {
        _caloRadialView=[[CaloRadialView alloc]init];
        _caloRadialView.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _caloRadialView;    
}


-(UILabel*) pointsLabel
{
    if (!_pointsLabel)
    {
        _pointsLabel=[[UILabel alloc]init];
        _pointsLabel.font=[UIFont fontWithName:@"HoboStd" size:25];
        _pointsLabel.textColor=[UIColor colorWithHexString:kColorDarkGreen];
        _pointsLabel.text=@"YOU GOT 750 POINTS";
        _pointsLabel.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _pointsLabel;
}

-(MissionView *)missionView1
{
    if (!_missionView1)
    {
        _missionView1=[[MissionView alloc]initWithPic:@"按摩" andDescribe:@"Lottery"];
        _missionView1.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionView1;
}

-(MissionView *)missionView2
{
    if (!_missionView2)
    {
        _missionView2=[[MissionView alloc]initWithPic:@"有氧拳擊" andDescribe:@"Reward"];
        _missionView2.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionView2;
    
}

-(MissionView*)missionView3
{
    if (!_missionView3)
    {
        _missionView3=[[MissionView alloc]initWithPic:@"plus500" andDescribe:@"Goal"];
        _missionView3.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _missionView3;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
