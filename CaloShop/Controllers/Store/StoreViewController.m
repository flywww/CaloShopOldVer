//
//  StoreViewController.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/9.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreViewController.h"
#import "StoreTabelView.h"
#import "StoreTabelViewCell.h"
#import "StoreModel.h"
#import "StoreDetailViewController.h"

@interface StoreViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) StoreTabelView* tableView;
@property (nonatomic) NSArray* productListArray;


@end

@implementation StoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [StoreModel parseStoreWithComplete:^(NSArray *storeArray)
    {
        self.productListArray=storeArray.copy;
    }
    andFail:^
    {
        NSLog(@"fail!!!!");
    }];
    
    
    [self.view addSubview:self.tableView];
    [self setupContraint];
    
}


-(void)setupContraint
{
    [self.tableView autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:0];
    [self.tableView autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:0];
    [self.tableView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:0];
    [self.tableView autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:0];

}

- (NSInteger)tableView:(StoreTabelView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.productListArray.count;
    
}

- (StoreTabelViewCell *)tableView:(StoreTabelView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString* cellID = @"storeCell";
    StoreTabelViewCell* cell =[tableView  dequeueReusableCellWithIdentifier:cellID];
    if (!cell)
    {
        cell=[[StoreTabelViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    StoreModel* productList = [[StoreModel alloc]initWithJSONData:self.productListArray[indexPath.row]];
    
    cell.productImage.image           = productList.productImage;
    cell.productNameLabel.text        = productList.productName;
    cell.productDetailLabel.text      = productList.productDetail;
    cell.productOriginPriceLabel.text = productList.productOriginPrice;
    cell.productPointPriceLabel.text  = productList.productPointPrice;
    return cell;
}

-(CGFloat)tableView:(StoreTabelView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    StoreModel* productList = [[StoreModel alloc]initWithJSONData:self.productListArray[indexPath.row]];
    [self performSegueWithIdentifier:@"storeDetailSegue" sender:productList];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    StoreModel* productList = (StoreModel*) sender;
    
    //StoreViewController* storeDetailViewController = (StoreViewController*)[segue destinationViewController];
    StoreDetailViewController* storeDetailViewController = (StoreDetailViewController *)[segue destinationViewController];

    storeDetailViewController.productList=productList;
}

-(StoreTabelView *)tableView
{
    if (!_tableView)
    {
        _tableView=[[StoreTabelView alloc]initForAutoLayout];
        _tableView.delegate=self;
        _tableView.dataSource=self;
    }
    return _tableView;
}

@end
