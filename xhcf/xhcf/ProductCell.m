//
//  ProductCell.m
//  xhcf
//
//  Created by 刘学 on 17/1/4.
//  Copyright © 2017年 Ethan. All rights reserved.
//
#define kPaddingLeftWidth  15.0
#import "ProductCell.h"

@interface ProductCell()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel, *timeLabel, *contentLabel;
@end

@implementation ProductCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor whiteColor];
        
        if (!_iconImageView) {
            _iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(kPaddingLeftWidth, kPaddingLeftWidth, 60, 60)];
            [self.contentView addSubview:_iconImageView];
        }
        
        if (!_titleLabel) {
            _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(95, 12, 150, 25)];
            _titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
            _titleLabel.text = @"产品上线提醒";
            [self.contentView addSubview:_titleLabel];
        }
        
        if (!_timeLabel) {
            _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(kScreen_Width - 100-kPaddingLeftWidth, 12, 100, 25)];
            _timeLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
            _timeLabel.text = @"2016/8/8 12:32";
            [self.contentView addSubview:_timeLabel];
        }
        
        if (!_contentLabel) {
            _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(95, 37, kScreen_Width - 110, 25)];
            _contentLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
            _contentLabel.text = @"财通资产-新宇投资1号特定多个客户专享";
            [self.contentView addSubview:_contentLabel];
        }
    }
    return self;
}

//+ (CGFloat)cellHeight{
//    
//    return 75;
//}

-(void)setFrame:(CGRect)frame {
    frame.origin.y += 5;
    frame.origin.x += 10;
    frame.size.width = frame.size.width - 20;
    frame.size.height = frame.size.height - 10;
    [super setFrame:frame];
}

@end
