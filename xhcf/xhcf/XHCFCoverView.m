//
//  XHCFCoverView.m
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "XHCFCoverView.h"
#import "InsuranceView.h"
#import "FundView.h"

@interface XHCFCoverView()
@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) InsuranceView *contentView;
@property (nonatomic, strong) UIButton *playButton;
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
    UIImage *image = [UIImage imageNamed:@"safe_online"];
    
    NSLog(@"%f____%f", image.size.width, image.size.height);
    self.bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    self.bgImageView.image = image;
    self.bgImageView.center = self.center;
    [self addSubview:self.bgImageView];
    
    self.contentView = [[InsuranceView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
//    self.contentView = [[FundView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
//    self.contentView.center = self.center;
    self.contentView.backgroundColor = [UIColor clearColor];
    [self.bgImageView addSubview:self.contentView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(image.size.width + 50, self.bgImageView.frame.origin.y - 60, 50, 30);
    [button setTitle:@"播放" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(playVideoEvent:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blackColor];
    self.playButton = button;
    [self addSubview:self.playButton];
    
}

- (void)showView {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self];
}

- (void)dismissView {
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.alpha = 0;
    } completion:^(BOOL finished) {
        [weakSelf removeFromSuperview];
    }];
}

- (void)playVideoEvent:(UIButton *)button {
    if (self.playVideoBlock) {
        self.playVideoBlock(button);
        [self dismissView];
    }
}
@end
