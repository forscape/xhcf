//
//  InsuranceView.m
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "InsuranceView.h"
@interface InsuranceView()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *fitPeopleLabel;
@property (nonatomic, strong) UILabel *fitPeopTagLabel;
@property (nonatomic, strong) UILabel *priceTagLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *tipLabel;
@end
@implementation InsuranceView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 132, self.frame.size.width, 50)];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        titleLabel.text = @"长城宏盛两全保险 \n (分红型)";
        titleLabel.textColor = [UIColor colorWithHexString:@"0x333333"];
        titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.titleLabel = titleLabel;
        [self addSubview:self.titleLabel];
        
        UILabel *fitPeopleTagLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, self.frame.size.width / 2, 30)];
        fitPeopleTagLabel.textAlignment = NSTextAlignmentCenter;
        fitPeopleTagLabel.text = @"适用人群";
        fitPeopleTagLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        fitPeopleTagLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        self.fitPeopTagLabel = fitPeopleTagLabel;
        [self addSubview:self.fitPeopTagLabel];
        
        UILabel *priceTagLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width / 2, 240, self.frame.size.width / 2, 30)];
        priceTagLabel.textAlignment = NSTextAlignmentCenter;
        priceTagLabel.text = @"参考保费";
        priceTagLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        priceTagLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        self.priceLabel = priceTagLabel;
        [self addSubview:self.priceLabel];
        
        UILabel *fitPeopleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 270, self.frame.size.width / 2, 30)];
        fitPeopleLabel.textAlignment = NSTextAlignmentCenter;
        fitPeopleLabel.text = @"30天-60岁";
        fitPeopleLabel.textColor = [UIColor colorWithHexString:@"0x333333"];
        fitPeopleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.fitPeopleLabel = fitPeopleLabel;
        [self addSubview:self.fitPeopleLabel];
        
        UILabel *priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width / 2, 270, self.frame.size.width / 2, 30)];
        priceLabel.textAlignment = NSTextAlignmentCenter;
        priceLabel.text = @"1229元 / 年起";
        priceLabel.textColor = [UIColor colorWithHexString:@"0xff5622"];
        priceLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        self.priceLabel = priceLabel;
        [self addSubview:self.priceLabel];
        
        UILabel *tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330, self.frame.size.width, 50)];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.text = @"保障范围：适用于30-60岁的购买";
        tipLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        tipLabel.textColor = [UIColor colorWithHexString:@"0x666666"];
        self.tipLabel = tipLabel;
        [self addSubview:self.tipLabel];
    }
    
    return self;
}
@end
