//
//  SmallCollectionCell.h
//  collectionDemo
//
//  Created by 王吉源 on 16/12/21.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SmallCollectionCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *contentImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) id contentModel;
@end
