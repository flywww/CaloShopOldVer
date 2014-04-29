//
//  MissionView.h
//  CaloShop
//
//  Created by 林盈志 on 2014/4/8.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MissionView : UIView

@property (nonatomic,strong) UIImageView* missionPic;
@property (nonatomic,strong) UILabel* missionLabel;
@property (nonatomic,strong) NSString* picName;
@property (nonatomic,strong) NSString* missionDescribe;

- (instancetype)initWithPic:(NSString*)PicName andDescribe:(NSString*)missionDescribe;
@end
