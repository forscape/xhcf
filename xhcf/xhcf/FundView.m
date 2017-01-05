//
//  FundView.m
//  xhcf
//
//  Created by 刘学 on 17/1/5.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "FundView.h"

@interface FundView()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UILabel *dateTagLabel;
@property (nonatomic, strong) UILabel *priceTagLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *tipLabel;
@end

@implementation FundView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 102, self.frame.size.width, 50)];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        titleLabel.text = @"星河财富一号产品-打嗝播报 \n 星河财富一号";
        titleLabel.textColor = [UIColor colorWithHexString:@"0x333333"];
        titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.titleLabel = titleLabel;
        [self addSubview:self.titleLabel];
        

        UILabel *dateTagLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330, self.frame.size.width / 2, 30)];
        dateTagLabel.textAlignment = NSTextAlignmentCenter;
        dateTagLabel.text = @"投资期限";
        dateTagLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        dateTagLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        self.dateTagLabel = dateTagLabel;
        [self addSubview:self.dateTagLabel];

        UILabel *priceTagLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width / 2, 330, self.frame.size.width / 2, 30)];
        priceTagLabel.textAlignment = NSTextAlignmentCenter;
        priceTagLabel.text = @"起投金额";
        priceTagLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        priceTagLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        self.priceLabel = priceTagLabel;
        [self addSubview:self.priceLabel];

        UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 310, self.frame.size.width / 2, 30)];
        dateLabel.textAlignment = NSTextAlignmentCenter;
        dateLabel.text = @"2938天";
        dateLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        dateLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.dateLabel = dateLabel;
        [self addSubview:self.dateLabel];

        
        UILabel *priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width / 2, 310, self.frame.size.width / 2, 30)];
        priceLabel.textAlignment = NSTextAlignmentCenter;
        priceLabel.text = @"234万元";
        priceLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        priceLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.priceLabel = priceLabel;
        [self addSubview:self.priceLabel];

        
        UILabel *tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 375, self.frame.size.width - 80, 50)];
//        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.text = @"产品点评：出售按时复读、到你是什么方式";
        tipLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        tipLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        tipLabel.numberOfLines = 0;
        self.tipLabel = tipLabel;
        [self addSubview:self.tipLabel];


    }
    return self;
}
@end
