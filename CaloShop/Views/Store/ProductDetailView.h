//
//  StoreDetailView.h
//  CaloShop
//
//  Created by 林盈志 on 2014/4/16.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoreDetailView : UIScrollView

@property (nonatomic) UILabel*  productNameLabel;
@property (nonatomic) UILabel*  productDetailLabel;
@property (nonatomic) UILabel*  productOriginPriceLabel;
@property (nonatomic) UILabel*  productPointPriceLabel;
@property (nonatomic) UIImageView* productImageView;
@property (nonatomic) UITextView*  productDescribeText;

@property (nonatomic) UIButton* buyButton;



@end
