//
//  HistoryViewCell.m
//  SearchHistory
//
//  Created by 植梧培 on 15/8/25.
//  Copyright (c) 2015年 机智的新手. All rights reserved.
//

#import "HistoryViewCell.h"
CGFloat heightForCell = 35;
@interface HistoryViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
@implementation HistoryViewCell

- (void)awakeFromNib {
    // Initialization code
    self.clipsToBounds = YES;
    self.layer.cornerRadius = heightForCell / 2;
}

- (void)setKeyword:(NSString *)keyword {
    _keyword = keyword;
    _titleLabel.text = _keyword;
    [self layoutIfNeeded];
    [self updateConstraintsIfNeeded];
}

- (CGSize)sizeForCell {
    //宽度加 heightForCell 为了两边圆角。
    return CGSizeMake([_titleLabel sizeThatFits:CGSizeMake(MAXFLOAT, MAXFLOAT)].width + heightForCell, heightForCell);
}
@end
