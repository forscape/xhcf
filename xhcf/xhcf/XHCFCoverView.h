//
//  XHCFCoverView.h
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHCFCoverView : UIView

@property (nonatomic, copy) void (^playVideoBlock)(UIButton *);

- (void)showView;

@end
