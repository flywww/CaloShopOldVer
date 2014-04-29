//
//  StoreModel.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/17.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "StoreModel.h"

@implementation StoreModel

-(instancetype)initWithJSONData:(NSDictionary *)data
{
    self =[super init];
    
    if (self)
    {
//        self.productID=1;
//        self.productImage=[UIImage imageNamed:@"有氧拳擊"];;
//        self.productName=@"有氧拳擊課程";
//        self.productDetail=@"塑身釋放壓力的拳擊課程暑假開班";
//        self.productOriginPrice=@"$1200";
//        self.productPointPrice=@"$600";
//        self.productDescribe=@"兼具武術和舞蹈的精華，最HOT的拳擊有氧可大量燃燒脂肪～極力推薦！AT有氧取得授權引進Body Combat國際課程，機會難得千萬別錯過。一起來挑戰全世界最流行課程的魅力在這充滿力道的課程中，不僅運用最新最美觀符合人體工學的武術動作，並結合時下流行動聽的舞曲，可藉機練習一些簡單的防身技巧，以及訓練手臂，大腿等部位的肌力，且有效的增進心肺功能，是兼顧身心與自身安全的課程！透過豐富有趣的拳擊動作與踢擊技巧、搭配老師的口令與好聽的音樂，超嗨的上課氣氛更是讓您欲罷不能！";
        
        self.productID=[data[@"productID"] integerValue];
        self.productImage=[UIImage imageNamed:data[@"productImage"]];
        self.productName=data[@"productName"];
        self.productDetail=data[@"productDetail" ];
        self.productOriginPrice=data[@"productOriginPrice"];
        self.productPointPrice=data[@"productPointPrice"];
        self.productDescribe=data[@"productDescribe"];
    }
    
    return self;
}

+(void)parseStore
{
    [self parseStoreWithComplete:nil andFail:nil];
}

+(void)parseStoreWithComplete:(CompleteBlock)complete andFail:(FailBlock)fail
{
   
    NSString* filePath = [[[NSBundle mainBundle] resourcePath]stringByAppendingString:@"/store.json"];
    
    
    NSData* data =[NSData dataWithContentsOfFile:filePath
                                         options:NSDataReadingMappedIfSafe
                                           error:nil];
    
    NSArray* jsonArray = [NSJSONSerialization JSONObjectWithData:data
                                                  options:0
                                                    error:nil];
    
    if (complete)
    {
        complete(jsonArray.copy);
    }
}


@end
