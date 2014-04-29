//
//  StoreModel.h
//  CaloShop
//
//  Created by 林盈志 on 2014/4/17.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CompleteBlock)(NSArray* storeArray);
typedef void (^FailBlock)(void);


@interface StoreModel : NSObject

@property (nonatomic) NSInteger productID;
@property (nonatomic) UIImage*  productImage;
@property (nonatomic) NSString* productName;
@property (nonatomic) NSString* productDetail;
@property (nonatomic) NSString* productOriginPrice;
@property (nonatomic) NSString* productPointPrice;
@property (nonatomic) NSString* productDescribe;

+(void)parseStore;
+(void)parseStoreWithComplete:(CompleteBlock)complete andFail:(FailBlock)fail;

-(instancetype) initWithJSONData:(NSDictionary*) data;

@end
