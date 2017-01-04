//
//  UIColor+Hex.h
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
@end
