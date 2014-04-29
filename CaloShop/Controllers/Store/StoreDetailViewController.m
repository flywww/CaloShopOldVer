//
//  StoreDetailViewController.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/16.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreDetailViewController.h"
#import "StoreDetailView.h"

@interface StoreDetailViewController ()<UIScrollViewDelegate>

@property (nonatomic) StoreDetailView* storeDetailView;


@end

@implementation StoreDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupLayout];

}

-(void)setupLayout
{
    [self.view addSubview:self.storeDetailView];
    
    
}

-(void)updateViewConstraints
{
    [super updateViewConstraints];
//    [self.storeDetailView autoSetDimensionsToSize:CGSizeMake(320,640)];
    [self.storeDetailView autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:0];
    
    [self.storeDetailView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.view];

    [self.storeDetailView autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.view];
    [self.storeDetailView autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:self.view];
}


-(StoreDetailView *)storeDetailView
{
    
    if (!_storeDetailView)
    {
        _storeDetailView=[[StoreDetailView alloc]initForAutoLayout];
        _storeDetailView.productNameLabel.text        = self.productList.productName;
        //_storeDetailView.productDetailLabel.text      = self.productList.productDetail;
        _storeDetailView.productImageView.image       = self.productList.productImage;
        _storeDetailView.productOriginPriceLabel.text = self.productList.productOriginPrice;
        _storeDetailView.productPointPriceLabel.text  = self.productList.productPointPrice;
        _storeDetailView.productDescribeText.text     = self.productList.productDescribe;
        
        _storeDetailView.contentSize = CGSizeMake(320, 1000);
        
    }
    return _storeDetailView;
}

@end
