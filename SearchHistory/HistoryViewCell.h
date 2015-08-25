//
//  HistoryViewCell.h
//  SearchHistory
//
//  Created by 植梧培 on 15/8/25.
//  Copyright (c) 2015年 机智的新手. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewCell : UICollectionViewCell
@property (nonatomic, copy) NSString *keyword;
- (CGSize)sizeForCell;
@end
