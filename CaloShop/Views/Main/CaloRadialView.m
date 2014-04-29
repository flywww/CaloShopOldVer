//
//  CaloRadialView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/1.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "CaloRadialView.h"
#import "MDRadialProgressView.h"
#import "MDRadialProgressTheme.h"
#import "MDRadialProgressLabel.h"


@interface CaloRadialView()


@property (nonatomic,strong) UILabel* burnedCaloLabel;
@property (nonatomic,strong) UILabel* totalCaloLabel;
@property (nonatomic,strong) UIView* radialBackView;
@property (nonatomic,strong) MDRadialProgressView* radialView;

@end

@implementation CaloRadialView

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
    
    
    [self addSubview:self.radialBackView];
    [self addSubview:self.radialView];
    [self addSubview:self.totalCaloLabel];
    [self addSubview:self.burnedCaloLabel];
    
    [self setupConstraints];
}

-(void) setupConstraints
{
    
    NSDictionary* viewDic=@{
                            @"radialView":self.radialView,
                            @"burnedCaloLabel":self.burnedCaloLabel,
                            @"totalCaloLabel":self.totalCaloLabel,
                            @"radialBackView":self.radialBackView
                            };
 
    //H
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[radialView(230)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[radialBackView(240)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[burnedCaloLabel(200)]|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDic]];
    
    //V
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[radialView(230)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDic]];
   [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[radialBackView(240)]"
                                                                options:0
                                                                metrics:nil
                                                                  views:viewDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-65-[burnedCaloLabel(70)]-1-[totalCaloLabel(20)]-75-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDic]];

//    self.radialView.frame=CGRectMake(self.radialView.frame.origin.x, self.radialView.frame.origin.y, 230, 230);
//    self.radialBackView.frame=CGRectMake(self.radialBackView.frame.origin.x, self.radialBackView.frame.origin.y, 240, 240);
    
    NSLayoutConstraint* xConstraint;
    xConstraint=[NSLayoutConstraint constraintWithItem:self.radialView
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.radialBackView
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self addConstraint:xConstraint];
    
    xConstraint=[NSLayoutConstraint constraintWithItem:self.totalCaloLabel
                                             attribute:NSLayoutAttributeCenterX
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self.burnedCaloLabel
                                             attribute:NSLayoutAttributeCenterX
                                            multiplier:1
                                              constant:0];
    [self addConstraint:xConstraint];
    

    
    NSLayoutConstraint* yConstraint;
    yConstraint=[NSLayoutConstraint constraintWithItem:self.radialView
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:0];
    [self addConstraint:yConstraint];
    
    yConstraint=[NSLayoutConstraint constraintWithItem:self.radialBackView
                                             attribute:NSLayoutAttributeCenterY
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:self
                                             attribute:NSLayoutAttributeCenterY
                                            multiplier:1
                                              constant:0];
    [self addConstraint:yConstraint];
    
    
}
-(UIView *)radialBackView
{
    if (!_radialBackView)
    {
        //_radialBackView=[[UIView alloc]initWithFrame:CGRectMake(self.view.center.x-(229/2), 74, 229, 229)];
        _radialBackView=[[UIView alloc]init];
        _radialBackView.backgroundColor=[UIColor whiteColor];
        _radialBackView.layer.cornerRadius=240/2;
        _radialBackView.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _radialBackView;
}


-(MDRadialProgressView *)radialView
{
    
    if (!_radialView)
    {
        
        _radialView=[[MDRadialProgressView alloc]init];
     
       _radialView.progressTotal=100;
       _radialView.progressCounter=72;
   
       _radialView.theme.incompletedColor=[UIColor whiteColor];
       _radialView.theme.completedColor=[UIColor colorWithHexString:kColorGreen];
       
       _radialView.theme.thickness=20;
       _radialView.theme.centerColor = [UIColor whiteColor];
       
       _radialView.theme.sliceDividerHidden = YES;
       _radialView.theme.sliceDividerColor = [UIColor whiteColor];
       _radialView.theme.sliceDividerThickness = 4;
       
       
       //_radialView.label.hidden=YES;
       _radialView.label.shadowColor = [UIColor clearColor];
       _radialView.label.textColor=[UIColor colorWithHexString:kColorGreen];
       _radialView.label.font=[UIFont fontWithName:@"HoboStd" size:85];
     
        
        _radialView.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _radialView;
}

-(UILabel *)burnedCaloLabel
{
    if (!_burnedCaloLabel)
    {
        _burnedCaloLabel=[[UILabel alloc]init];
        _burnedCaloLabel.font=[UIFont fontWithName:@"HoboStd" size:70];
        _burnedCaloLabel.textAlignment=NSTextAlignmentCenter;
        _burnedCaloLabel.textColor=[UIColor colorWithHexString:kColorGreen];
        _burnedCaloLabel.text=@"1750";
        _burnedCaloLabel.backgroundColor=[UIColor clearColor];
        _burnedCaloLabel.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _burnedCaloLabel;
}

-(UILabel *)totalCaloLabel
{
    if (!_totalCaloLabel)
    {
     //_totalCaloLabel=[[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x-40, 180, 100, 100)
        _totalCaloLabel=[[UILabel alloc]init];
        _totalCaloLabel.font=[UIFont fontWithName:@"HoboStd" size:22];
        _totalCaloLabel.textColor=[UIColor colorWithHexString:kColorGreen];
        _totalCaloLabel.text=@"of 2000 cals";
        _totalCaloLabel.textAlignment=NSTextAlignmentCenter;
        _totalCaloLabel.backgroundColor=[UIColor clearColor];
        _totalCaloLabel.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _totalCaloLabel;
}

@end
