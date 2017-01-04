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
@property (nonatomic, strong) UILabel *FitPeopleLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *tipLabel;
@end
@implementation InsuranceView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UILabel *titleLabel = [[UILabel alloc] init];
        self.titleLabel = titleLabel;
        [self addSubview:self.titleLabel];
        
    }
    return self;
}
@end
