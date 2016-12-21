//
//  BaseCollectionViewCell.m
//  collectionDemo
//
//  Created by 王吉源 on 16/12/13.
//  Copyright © 2016年 王吉源. All rights reserved.
//

#import "BaseCollectionViewCell.h"

//#import "View+MASAdditions.h"
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGTH   [UIScreen mainScreen].bounds.size.height
@implementation BaseCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubViews];
    }
    return self;
}
-(UICollectionView *)contentCollectionView{
    if (!_contentCollectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        _contentCollectionView =[[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
        _contentCollectionView.backgroundColor = [UIColor whiteColor];
        _contentCollectionView.scrollEnabled = NO;
        _contentCollectionView.showsVerticalScrollIndicator = NO;
        _contentCollectionView.showsHorizontalScrollIndicator = NO;
        _contentCollectionView.delegate = self;
        _contentCollectionView.dataSource = self;
        _contentLayout = layout;
    }
    return _contentCollectionView;
}
-(void)initSubViews{
    [self addSubview:self.contentCollectionView];
    [self addSubview:self.headerView];
    [self initSubViewLayouts];
    [self initCompletionOpration];
    [self contentModelCompletionOpration];
}
-(void)setSection:(NSInteger)section{
    self.headerView.contentLabel.text = [NSString stringWithFormat:@"这里是第%ld组的头部",section];
}
- (void)initSubViewLayouts{
    self.headerView.frame = CGRectMake(0, 0, self.bounds.size.width, 35);
    self.contentCollectionView.frame = CGRectMake(0, 35, self.bounds.size.width, self.bounds.size.height-35);
}
-(void)initCompletionOpration{
    
}
-(void)contentModelCompletionOpration{
    
}
- (SectionView *)headerView{
    if (!_headerView) {
        _headerView = [[SectionView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 35)];
    }
    return _headerView;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 12;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:true];
}
@end
