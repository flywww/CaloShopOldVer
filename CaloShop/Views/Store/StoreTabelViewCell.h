//
//  StoreTabelViewCell.h
//  CaloShop
//
//  Created by 林盈志 on 2014/4/9.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoreTabelViewCell : UITableViewCell

@property (nonatomic,strong) UIImageView* productImage;

@property (nonatomic,strong) UILabel*  productNameLabel;
@property (nonatomic,strong) UILabel*  productDetailLabel;
@property (nonatomic,strong) UILabel*  productOriginPriceLabel;
@property (nonatomic,strong) UILabel*  productPointPriceLabel;
@property (nonatomic,strong) UIView*   deleteLine;

@end
