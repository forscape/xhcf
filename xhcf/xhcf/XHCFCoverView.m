//
//  XHCFCoverView.m
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "XHCFCoverView.h"
@interface XHCFCoverView()
@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) UIView *contentView;
@end
@implementation XHCFCoverView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self layoutAllSubviews];
    }
    return self;
}

- (void)layoutAllSubviews {
    UIImage *image = [UIImage imageNamed:@"jijin_online"];
    
    NSLog(@"%f____%f", image.size.width, image.size.height);
    self.bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    self.bgImageView.image = image;
    self.bgImageView.center = self.center;
    [self addSubview:self.bgImageView];
    
    self.contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self.bgImageView addSubview:self.contentView];
    
}

- (void)showView {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self];
}
@end
