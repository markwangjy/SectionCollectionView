//
//  SmallCollectionCell.m
//  collectionDemo
//
//  Created by 王吉源 on 16/12/21.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import "SmallCollectionCell.h"

@implementation SmallCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)setContentModel:(id)contentModel{

    self.contentImageView.image = [UIImage imageNamed:contentModel];
    self.titleLabel.text = contentModel;
}

@end
