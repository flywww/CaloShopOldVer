//
//  ViewController.m
//  CaloShop
//
//  Created by 林盈志 on 2014/4/13.
//  Copyright (c) 2014年 林盈志. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    //Tab Bar
    self.tabBarController.tabBar.barTintColor=[UIColor colorWithHexString:kColorLightGreen];
    self.tabBarController.tabBar.TintColor=[UIColor colorWithHexString:kColorDarkGreen];
    self.tabBarController.tabBar.TintColor=[UIColor colorWithHexString:kColorDarkGreen];
    self.tabBarController.tabBar.translucent=NO;
    
    //Navigation Bar
    self.navigationController.navigationBar.translucent=NO;
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithHexString:kColorLightGreen];
    [self.navigationController.navigationBar setTitleTextAttributes:@{
                                                                      NSForegroundColorAttributeName : [UIColor colorWithHexString:kColorDarkGreen],
                                                                       NSFontAttributeName: [UIFont fontWithName:@"HoboStd" size:24.0f]
                                                                
                                                                      }];
    


//    [[UITabBarItem appearance] setTitleTextAttributes:@{
//                                                        NSFontAttributeName : [UIFont fontWithName:@"HoboStd" size:10.0f],
//                                                        NSForegroundColorAttributeName : [UIColor colorWithHexString:kColorDarkGreen]
//                                                        } forState:UIControlStateNormal];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
