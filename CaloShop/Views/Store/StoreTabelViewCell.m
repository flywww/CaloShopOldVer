//
//  StoreTableViewCell.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/9.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreTabelViewCell.h"
#import "StoreModel.h"

@implementation StoreTabelViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self setupLayout];
    }
    return self;
}

-(void)setupLayout
{
    self.selectionStyle=UITableViewCellSelectionStyleNone;
    
    [self addSubview:self.productImage];
    [self addSubview:self.productNameLabel];
    [self addSubview:self.productDetailLabel];
    [self addSubview:self.productOriginPriceLabel];
    [self addSubview:self.productPointPriceLabel];

    [self addSubview:self.deleteLine];
    
    [self setupConstraints];
}


-(void)setupConstraints
{
    [self.productImage autoSetDimensionsToSize:CGSizeMake(90, 90)];
    [self.productImage autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:0];
    [self.productImage autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:0];
    [self.productImage autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:0];
 
    [self.productNameLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.productImage withOffset:13];
    [self.productNameLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self withOffset:11];
    
    [self.productDetailLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.productImage withOffset:13];
    [self.productDetailLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productNameLabel withOffset:-1];
    
    [self.productOriginPriceLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.productImage withOffset:13];
    [self.productOriginPriceLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productDetailLabel withOffset:7];
    
    [self.productPointPriceLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.productOriginPriceLabel withOffset:20];
    [self.productPointPriceLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.productDetailLabel withOffset:7];
    
    [self.deleteLine autoSetDimensionsToSize:CGSizeMake(60,2)];
    [self.deleteLine autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.productOriginPriceLabel];
    [self.deleteLine autoAlignAxis:ALAxisVertical toSameAxisOfView:self.productOriginPriceLabel];
}

-(UIImageView *)productImage
{
    if (!_productImage)
    {
        _productImage=[[UIImageView alloc]initForAutoLayout];
        _productImage.backgroundColor=[UIColor redColor];
    }
    return _productImage;
}

-(UILabel *)productNameLabel
{
    if (!_productNameLabel)
    {
        _productNameLabel=[[UILabel alloc]initForAutoLayout];
        _productNameLabel.backgroundColor=[UIColor clearColor];
        _productNameLabel.textColor=[UIColor blackColor];
        _productNameLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
        _productNameLabel.textAlignment=NSTextAlignmentCenter;
        [_productNameLabel sizeToFit];
    }
    return _productNameLabel;
}

-(UILabel *)productDetailLabel
{
    if (!_productDetailLabel)
    {
        _productDetailLabel=[[UILabel alloc]initForAutoLayout];
        _productDetailLabel.backgroundColor=[UIColor clearColor];
        _productDetailLabel.textColor=[UIColor colorWithHexString:kColorGray];
        _productDetailLabel.font=[UIFont fontWithName:@"HelveticaNeue" size:14];
        _productDetailLabel.textAlignment=NSTextAlignmentCenter;
        [_productDetailLabel sizeToFit];
    }
    return _productDetailLabel;
}

-(UILabel *)productOriginPriceLabel
{
    if (!_productOriginPriceLabel)
    {
        _productOriginPriceLabel=[[UILabel alloc]initForAutoLayout];
        _productOriginPriceLabel.backgroundColor=[UIColor clearColor];
        _productOriginPriceLabel.textColor=[UIColor colorWithHexString:kColorDarkGreen];
        _productOriginPriceLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
        _productOriginPriceLabel.textAlignment=NSTextAlignmentCenter;
        [_productOriginPriceLabel sizeToFit];
    }
    return _productOriginPriceLabel;
}

-(UILabel *)productPointPriceLabel
{
    if (!_productPointPriceLabel)
    {
        _productPointPriceLabel=[[UILabel alloc]initForAutoLayout];
        _productPointPriceLabel.backgroundColor=[UIColor clearColor];
        _productPointPriceLabel.textColor=[UIColor colorWithHexString:kColorDarkRed];
        _productPointPriceLabel.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
        _productPointPriceLabel.textAlignment=NSTextAlignmentCenter;
        [_productPointPriceLabel   sizeToFit];
    }
    return _productPointPriceLabel;
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
