//
//  UIColor+HexColor.h
//
//  Created by Eddie Kao on 13/5/10.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

+ (UIColor *) colorWithHexString:(NSString *) hex;
+ (UIColor *) colorWithHexString:(NSString *) hex withAlpha:(CGFloat) alpha;

@end