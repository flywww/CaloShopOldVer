//
//  StoreDetailView.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/16.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreDetailView.h"

@interface StoreDetailView()

@property (nonatomic,strong) UIView*   deleteLine;

@end

@implementation StoreDetailView

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

    [self addSubview:self.productImageView];
    [self addSubview:self.productNameLabel];
    [self addSubview:self.productDetailLabel];
    [self addSubview:self.productOriginPriceLabel];
    [self addSubview:self.productPointPriceLabel];
    [self addSubview:self.productDescribeText];
    
    [self addSubview:self.buyButton];
    [self addSubview:self.deleteLine];
}

- (void)updateConstraints
{
    [super updateConstraints];


   [self.productImageView autoSetDimensionsToSize:CGSizeMake(320, 320)];
   [self.productImageView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:0];
   [self.productImageView autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:0];

   [self.productNameLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productImageView withOffset:15];
   [self.productNameLabel autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:15];
   [self.productNameLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self withOffset:15];

   [self.productOriginPriceLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productImageView withOffset:15];
   [self.productOriginPriceLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeTrailing ofView:self.productNameLabel withOffset:30];
   
   [self.productPointPriceLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productImageView withOffset:15];
   [self.productPointPriceLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeTrailing ofView:self.productOriginPriceLabel withOffset:30];
 
   [self.buyButton autoSetDimensionsToSize:CGSizeMake(300, 50)];
   [self.buyButton autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productNameLabel withOffset:15];
   [self.buyButton autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self withOffset:10];
   [self.buyButton autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:self withOffset:10];
 
    
    [self.deleteLine autoSetDimensionsToSize:CGSizeMake(60,4)];
    [self.deleteLine autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.productOriginPriceLabel];
    [self.deleteLine autoAlignAxis:ALAxisVertical toSameAxisOfView:self.productOriginPriceLabel];

    
 
//   [self.productDescribeText autoSetDimensionsToSize:CGSizeMake(320, 1000)];
//   [self.productDescribeText autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productNameLabel withOffset:20];
//   [self.productDescribeText autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self];

   
}



-(UILabel *)productNameLabel
{
    if (!_productNameLabel)
    {
        _productNameLabel=[[UILabel alloc]initForAutoLayout];
        _productNameLabel.textColor=[UIColor blackColor];
        _productNameLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    }
    return _productNameLabel;
}

-(UILabel *)productDetailLabel
{
    if (!_productDetailLabel)
    {
        _productDetailLabel=[[UILabel alloc]initForAutoLayout];
        
    }
    return _productDetailLabel;
}


-(UILabel *)productOriginPriceLabel
{
    if (!_productOriginPriceLabel)
    {
        _productOriginPriceLabel=[[UILabel alloc]initForAutoLayout];
        _productOriginPriceLabel.textColor=[UIColor colorWithHexString:kColorDarkGreen];
        _productOriginPriceLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    }
    return _productOriginPriceLabel;
}


-(UILabel *)productPointPriceLabel
{
    if (!_productPointPriceLabel)
    {
        _productPointPriceLabel=[[UILabel alloc]initForAutoLayout];
        _productPointPriceLabel.textColor=[UIColor colorWithHexString:kColorDarkRed];
        _productPointPriceLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    }
    return _productPointPriceLabel;
}

-(UIImageView *)productImageView
{
    if(!_productImageView)
    {
//        _productImageView=[[UIImageView alloc]initForAutoLayout];
        _productImageView = [[UIImageView alloc]init];
        _productImageView.translatesAutoresizingMaskIntoConstraints=NO;
    }
    return _productImageView;
}

-(UITextView *)productDescribeText
{
    if (!_productDescribeText)
    {
        _productDescribeText=[[UITextView alloc]initForAutoLayout];
        _productDescribeText.textColor=[UIColor colorWithHexString:kColorGray];
        _productDescribeText.font=[UIFont fontWithName:@"HelveticaNeue" size:16];
        _productDescribeText.editable=NO;

    }
    return _productDescribeText;
}

-(UIButton*)buyButton
{
    if(!_buyButton)
    {
        _buyButton=[[UIButton alloc]initForAutoLayout];
        _buyButton.backgroundColor=[UIColor colorWithHexString:kColorDarkGreen];
        _buyButton.layer.cornerRadius=5;
        [_buyButton setTitle:@"BUY NOW!" forState:UIControlStateNormal];
        [_buyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        _buyButton.titleLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
 
    }
    return _buyButton;
}

-(UIView *)deleteLine
{
    if (!_deleteLine)
    {
        _deleteLine=[[UIView alloc]initForAutoLayout];
        _deleteLine.backgroundColor=[UIColor colorWithHexString:kColorDarkRed];
    }
    return _deleteLine;
}

@end
