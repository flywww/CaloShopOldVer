//
//  MissionView.h
//  CaloShop
//
//  Created by 林盈志 on 2014/4/8.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MissionView : UIView

@property (nonatomic) UIImageView* missionPic;
@property (nonatomic) UILabel* missionDescribeLabel;
@property (nonatomic) UILabel* missionSubDescribeLabel;

@property (nonatomic) NSString* picName;
@property (nonatomic) NSString* missionDescribe;
@property (nonatomic) NSString* missionSubDescribe;

@property (nonatomic) UIView* circleView;

- (instancetype)initWithPic:(NSString*)PicName andDescribe:(NSString*)missionDescribe andPrice:(NSString*)missionSubDescribe;

@end
