//
//  BaseCollectionViewCell.h
//  collectionDemo
//
//  Created by 王吉源 on 16/12/13.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SectionView.h"
@interface BaseCollectionViewCell : UICollectionViewCell <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) SectionView *headerView;
@property (nonatomic, strong) UICollectionView *contentCollectionView;
@property (nonatomic, weak) UICollectionViewFlowLayout *contentLayout;

#pragma mark - 子类重构
-(void)initCompletionOpration;
-(void)contentModelCompletionOpration;

@property(nonatomic,assign)NSInteger section;
@end
